module.exports = (_db)=>{
    db = _db
    return OrderModel
}

class OrderModel {
    //validation d'une commande
    static saveOneOrder(user_id, totalAmount){
      //le status sera "not payed" par défault
      // console.log("user id + totalAmount in saveOneOrder ordermodel")
      // console.log(user_id, totalAmount)
      let sql = "INSERT INTO orders (user_id, totalAmount, creationTimestamp, status) VALUES(?, ?, ?, ?)"
      return db.query(sql, [user_id, totalAmount, new Date(), "not payed"])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })

    }

    //sauvegarde d'un orderDetail
    static saveOneOrderDetail(order_id, plant){
      let total = parseInt(plant.quantityInCart) * plant.safePrice
      let sql = "INSERT INTO orderdetails (order_id, plant_id, quantity, total) VALUES(?, ?, ?, ?)"
      return db.query(sql, [order_id, plant.id, plant.quantityInCart, total])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //modification du montant total
    static updateTotalAmount(order_id, totalAmount){
      let sql = "UPDATE orders SET totalAmount=? WHERE id=?"
      return db.query(sql, [totalAmount, order_id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //récupération d'une commande en fonction d'un id
    static getOneOrder(id){
      let sql = "SELECT * FROM orders WHERE id = ?"
      return db.query(sql, [id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //modification d'un status de commande
    static updateStatus(order_id, status){
      let sql = "UPDATE orders SET status = ? WHERE id = ?"
      return db.query(sql, [status, order_id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //récupération de toutes les commandes
    static getAllOrders(){
      let sql = "SELECT * FROM orders"
      return db.query(sql)
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //récupération des détails d'une commande
    static getAllDetails(order_id){
      let sql = "SELECT * FROM orderdetails WHERE order_id = ?"
      return db.query(sql, [order_id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }
}
