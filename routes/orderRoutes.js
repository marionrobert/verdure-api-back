//on lie la clé privé stripe au back end pour permettre le suivi du paiement
const sk_test = process.env.SK_TEST
const stripe = require('stripe')(sk_test)
const withAuth = require('../withAuth')
const adminAuth = require('../adminAuth')
// const { json } = require('express')
// const { JsonWebTokenError } = require('jsonwebtoken')

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
        let orderId = order.insertId

        //on boucle sur le panier passé dans req.body.basket (pour enregistrer le detail de chaque produit)
        req.body.basket.forEach(async element => {

          //on récup les infos d'une plante par son id (on stock dans une variable plant)
          let dataPlant = await plantModel.getOnePlant(element.id)
          if (dataPlant.code) {
            res.json({status: 500, msg: "Il n'existe pas de plante avec l'id renseigné"})
          } else {
            //on ajoute une propriété safePrice à l'objet du tour de boucle en lui affectant le prix de plant en chiffre à virgule
            element.safePrice = parseFloat(dataPlant[0].price)

            //on appelle la fonction pour sauvegarder un détail de cette commande en envoyant l'id de la commande et le produit du tour de boucle
            let newOrderDetails = await orderModel.saveOneOrderDetail(orderId, element)
            if (newOrderDetails.code){
              res.json({status: 500, msg: "Les détails de la commande n'ont pas pu être enregistrés", err: newOrderDetails})
            } else {
              //on additionne au totalAmount la quantité du produit demandé multiplié par le safePrice
              totalAmount += element.safePrice * parseInt(element.quantityInCart)

              //on met à jour le montant total de la commmande (fonction)
              let orderUpdated = await orderModel.updateTotalAmount(orderId, totalAmount)
              if (orderUpdated.code){
                res.json({status: 500, msg: "Le montant total de la commande n'a pas pu être mis à jour"})
              }
            }
          }
        });
        //on retourne le json de 200 avec l'id de la commande qu'on vient d'enregistrer
        res.json({status: 200, order_id: orderId, msg: "La commande a bien été créée."})
      }
  })

    //route de gestion du paiement (va analyser le bon fonctionnement du paiement)
    app.post('/api/v1/order/payment', withAuth, async (req, res, next)=>{
      console.log("in checkpayment back, req -->", req.body)
      let order = await orderModel.getOneOrder(req.body.orderId)
      //on lance le suivi du paiement de la commande
      //on veut que stripe nous retourne une réponse d'acceptation de paiement ou non, mais tout ce qui est envoi numéro carte c'ets géré en front
      const paymentIntent = await stripe.paymentIntents.create({
        amount: order[0].totalAmount * 100, // stripe est en centimes donc on multiplie par 100
        currency: "eur", //devise du paiement,
        // payment_method: 'pm_card_visa',
        metadata: {integration_check: "accept_a_paymentt"}, //on vérifie si le paiement est accepté ou non
        receipt_email: req.body.email, //on demande à stripe d'envoyer email de confirmation du payment à l'utilisateur
      })
      res.json({client_secret: paymentIntent["client_secret"]})

    })


    //route de modification du status de paiement de la commande (not payed to payed)
    app.put("/api/v1/order/validate/:id", withAuth, async(req, res, next) => {
      // console.log("hello from validate payement")
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'id communiqué n'est pas un nombre."})
      } else {
        console.log("l'id est bon ")
        let order = await orderModel.updateStatus(req.params.id, req.body.status)
        console.log("order", order)
        if (order.code){
          res.json({status: 500, msg: "Le statut de la commande n'a pas pu être mis à jour.", err: order})
        } else {
          res.json({status: 200, msg: "Le statut de la commande a été mis à jour"})
        }
      }
    })


    //route admin de modification du status de la commande (payed - en livraison - finished)
    app.put("/api/v1/order/admin-update-status/:id", adminAuth, async(req, res, next) => {
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'id communiqué n'est pas un nombre."})
      } else {
        let order = await orderModel.updateStatus(req.params.id, req.body.status)
        if (order.code){
          res.json({status: 500, msg: "Le statut de la commande n'a pas pu être mis à jour.", err: order})
        } else {
          // if
          res.json({status: 200, msg: "Le statut de la commande a été mis à jour"})
        }
      }
    })


    // route de récupération de toutes les commandes
    app.get("/api/v1/orders", adminAuth, async(req, res, next)=>{
      let allOrders = await orderModel.getAllOrders()
      if (allOrders.code){
        res.json({status: 500, msg: "Une erreur est sruvenue lors de la récupération des commandes"})
      } else {
        res.json({status: 200, results: allOrders})
      }
    })


    //route de récupération d'une commande
    app.get("/api/v1/order/:id", withAuth, async(req, res, next)=>{
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'id renseigné n'est pas un nombre"})
      } else {
        //on récupère la commande
        let order = await orderModel.getOneOrder(req.params.id)
        if (order.code){
          res.json({status: 500, msg: "La requête de récupération de la commande n'a pas pu aboutir", err: order})
        } else {
          // on récupère les infos de l'utilisateur qui a commandé
          let user = await userModel.getOneUser(order[0].user_id)
          if (user.code){
            res.json({status: 500, msg: "La requête de récupération des informations d'utilisateur n'a pas pu aboutir", err: user})
          } else {
            // on crée un objet de user sans infos sensibles (firstName, lastName, address, zip, city, phone)
            let dataUser = {
              "firstName": user[0].firstName,
              "lastName": user[0].lastName,
              "address": user[0].address,
              "zip": user[0].zip,
              "city": user[0].city,
              "phone": user[0].phone
            }

            //on récupère les détails de la commande
            let orderDetails = await orderModel.getAllDetails(req.params.id)
            // console.log(orderDetails)
            if (orderDetails.code){
              res.json({status: 500, msg: "La requête de récupération des détails de la commande n'a pas pu aboutir", err: orderDetails})
            } else {
              //on retourne le json avec les infos de la commande, de l'utilisateur et des détails de la commande
              res.json({status: 200, order: order[0], dataUser: dataUser, orderDetails: orderDetails})
            }
          }
        }
      }
    })

    // route de récupération des commandes par un utilisateur
    app.get("/api/v1/orders/user/:userId", withAuth, async(req, res, next) => {
      if (isNaN(req.params.userId)){
        res.json({status: 500, msg: "L'id renseigné n'est pas un nombre."})
      } else {
        // récupération des commandes
        let orders = await orderModel.getAllOrdersByUser(req.params.userId)
        if (orders.code) {
          res.json({status: 500, msg: "La requête de récupération des commandes n'a pas pu aboutir.", err: orders})
        } else {
          res.json({status: 200, orders: orders})
        }
      }
    })
}
