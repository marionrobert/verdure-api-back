module.exports = (_db)=>{
    db = _db
    return PlantModel
}

class PlantModel {

    //récupération des plantes
    static getAllPlants(){
      let sql = "SELECT * FROM plants"
      return db.query(sql)
      .then((res)=> {
        return res
      })
      .catch((err)=>{
        return err
      })

    }

    //récupération d'une seule plante
    static getOnePlant(id){
      let sql = "SELECT * FROM `plants` WHERE id=?"
      return db.query(sql, [id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })

    }

    //sauvegarde d'une plante
    static saveOnePlant(req){
      let sql = "INSERT INTO plants (name, description, price, photo, quantity, watering, brightness, minTemperature, maxTemperature, creationTimestamp) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
      return db.query(sql, [
        req.body.name,
        req.body.description,
        req.body.price,
        req.body.photo,
        req.body.quantity,
        req.body.watering,
        req.body.brightness,
        req.body.minTemperature,
        req.body.maxTemperature,
        new Date()
      ])
      .then((res)=> {
        return res
      })
      .catch((err)=>{
        return err
      })
    }

    //modification d'une plante
    static updateOnePlant(req, id){
      let sql = "UPDATE plants SET name=?, description=?, price=?, photo=?, quantity=?, watering=?, brightness=?, minTemperature=?, maxTemperature=? WHERE id=?"
      return db.query(sql, [
        req.body.name,
        req.body.description,
        req.body.price,
        req.body.photo,
        req.body.quantity,
        req.body.watering,
        req.body.brightness,
        req.body.minTemperature,
        req.body.maxTemperature,
        id
      ])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })

    }

    //suppression d'une plante
    static deleteOnePlant(id){
      let sql = "DELETE FROM plants WHERE id=?"
      return db.query(sql, [id])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        return err
      })
    }
}
