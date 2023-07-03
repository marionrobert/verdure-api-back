const stripe = require('stripe')('sk_test_51IzetcLJHwOB3xS8Scys4aqt0tTpGSnpiRxPXgZye7zDrOYabfTBw2tJGHfC7BcEZoy8VitDlpjlfG69RICNzKMV00z6pK7PXN')
const withAuth = require('../withAuth')

module.exports = (app, db) => {
    const orderModel = require('../models/OrderModel')(db)
    const plantModel = require('../models/PlantModel')(db)
    const userModel = require('../models/UserModel')(db)

    //route de sauvegarde d'une commande
    app.post('/api/v1/order/save', withAuth, async (req, res, next)=>{
        let totalAmount = 0;
        //enregistrement de l'order (fonction)

        //on récup dans l'objet de réponse l'insertId (l'id qu'il vient d'insérer dans le bdd)

        //on boucle sur le panier passé dans req.body.basket (pour enregistrer le detail de chaque produit)

            //on récup les infos d'une plante par son id (on stock dans une variable plant)

            //on ajoute une propriété safePrice à l'objet du tour de boucle en lui affectant le prix de plant en chiffre à virgule


            //on appel la fonction pour sauvegarder un détail de cette commande en envoyant l'id de la commande et le produit du tour de boucle


            //on additionne au totalAmount la quantité du produit demandé multiplié par le safePrice


            //on met à jour le montant total de la commmande (fonction)


        //on retourne le json de 200 avec l'id de la commande qu'on vient d'enregistrer

    })

    //route de gestion du paiement (va analyser le bon fonctionnement du paiement)
    app.post('/api/v1/order/payment', withAuth, async (req, res, next)=>{


    })


    //route de modification du status de paiement de la commande


}
