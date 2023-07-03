const stripe = require('stripe')('sk_test_51IzetcLJHwOB3xS8Scys4aqt0tTpGSnpiRxPXgZye7zDrOYabfTBw2tJGHfC7BcEZoy8VitDlpjlfG69RICNzKMV00z6pK7PXN')
const withAuth = require('../withAuth')
const adminAuth = require('../adminAuth')
const { json } = require('express')

module.exports = (app, db) => {
    const orderModel = require('../models/OrderModel')(db)
    const plantModel = require('../models/PlantModel')(db)
    const userModel = require('../models/UserModel')(db)

    //route de sauvegarde d'une commande
    app.post('/api/v1/order/save', withAuth, async (req, res, next)=>{
        let totalAmount = 0;
        //enregistrement de l'order (fonction)
        let order = await orderModel.saveOneOrder(req.body.user_id, totalAmount)

        if (order.code) {
          res.json({status: 500, msg: "La commande n'a pas pu être créée"})
        } else {
          //on récup dans l'objet de réponse l'insertId (l'id qu'il vient d'insérer dans le bdd)
          let order_id = order.insertId

          //on boucle sur le panier passé dans req.body.basket (pour enregistrer le detail de chaque produit)
          req.body.basket.forEach(element => {
            let newOrderLine = {
              "id": element.plant_id
            }
            //on récup les infos d'une plante par son id (on stock dans une variable plant)
            let plant = await plantModel.getOnePlant(element.plant_id)
            if (plant.code) {
              res.json({status: 500, msg: "Il n'existe pas de plante avec l'id renseigné"})
            } else {
              //on ajoute une propriété safePrice à l'objet du tour de boucle en lui affectant le prix de plant en chiffre à virgule
              newOrderLine.price = plant[0].price
              newOrderLine.quantity = element.quantity

              //on appelle la fonction pour sauvegarder un détail de cette commande en envoyant l'id de la commande et le produit du tour de boucle
              let newOrderDetails = await orderModel.saveOneOrderDetail(order_id, newOrderLine)


              //on additionne au totalAmount la quantité du produit demandé multiplié par le safePrice
              totalAmount += plant[0].price *
            }
          });
          //on met à jour le montant total de la commmande (fonction)
          let orderUpdated = await orderModel.updateTotalAmount(order.insertId, totalAmount)
          //on retourne le json de 200 avec l'id de la commande qu'on vient d'enregistrer
          if (orderUpdated.code){
            res.json({status: 500, msg: "Le montant total de la commande n'a pas pu être mis à jour"})
          } else {
            res.json({status: 200, id: order.insertId, msg: "Le montant total de la commande a été mis à jour."})
          }
        }
    })

    //route de gestion du paiement (va analyser le bon fonctionnement du paiement)
    app.post('/api/v1/order/payment', withAuth, async (req, res, next)=>{


    })


    //route de modification du status de paiement de la commande
    app.put("/api/v1/order/update-status/:id", adminAuth, async(req, res, next) => {
      let order = await orderModel.updateStatus(req.params.id, req.body.status)
      if (order.code){
        res.json({status: 500, msg: "Le statut de la commande n'a pas pu être mis à jour."})
      } else {
        res.json({status: 200, msg: "Le statut de la commande a été mis à jour"})
      }
    })

}
