module.exports = (_db)=>{
    db = _db
    return OrderModel
}

class OrderModel {
    //validation d'une commande
    static saveOneOrder(user_id, totalAmount){
        //le status sera "not payed" par défault


    }

    //sauvegarde d'un orderDetail
    static saveOneOrderDetail(order_id, plant){



    }

    //modification du montant total
    static updateTotalAmount(order_id, totalAmount){



    }

    //récupération d'une commande en fonction d'un id
    static getOneOrder(id){



    }

    //modification d'un status de commande
    static updateStatus(orderId, status){



    }

    //récupération de toutes les commandes
    static getAllOrders(){


    }

    //récupération des détails d'une commande
    static getAllDetails(orderId){


    }
}
