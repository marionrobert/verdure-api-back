const bcrypt = require('bcrypt')
const saltRounds = 10

module.exports = (_db)=>{
    db=_db
    return UserModel
}

class UserModel {
    //sauvegarde d'un membre
    static saveOneUser(req){
      // console.log(req.body)
      let sql = "INSERT INTO users (firstName, lastName, email, password, role, address, zip, city, phone, creationTimestamp) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
      return bcrypt.hash(req.body.password, saltRounds)
      .then((hashPassword)=>{
        return db.query(sql, [req.body.firstName, req.body.lastName, req.body.email, hashPassword, "user", req.body.address, req.body.zip, req.body.city, req.body.phone, new Date()])
        .then((res)=>{
          console.log("res" + res)
          return res
        })
        .catch((err)=>{
          console.log("erreur" + err)
          return err
        })
      })
      .catch((err)=>{
        return err
      })
    }

    //récupération d'un utilisateur en fonction de son mail
    static getUserByEmail(email){
        return db.query("SELECT * FROM users WHERE email = ?", [email])
        .then((res)=>{
            return res
        })
        .catch((err)=>{
            return err
        })
    }

    //récupération d'un utilisateur par son id
    static getOneUser(id){
        return db.query("SELECT * FROM users WHERE id = ?", [id])
        .then((res)=>{
            return res
        })
        .catch((err)=>{
            return err
        })
    }

    //modification d'un utilisateur
    static updateUser(req, userId){
      let sql = "UPDATE users SET firstName = ?, lastName = ?, address = ?, zip = ?, city = ?, phone = ? WHERE id = ?"
      return db.query(sql, [req.body.firstName, req.body.lastName, req.body.address, req.body.zip, req.body.city, req.body.phone, userId])
      .then((res)=>{
        return res
      })
      .catch((err)=>{
        console.log(err)
      })
    }

    static updateConnexion(id){
        return db.query("UPDATE users SET connexionTimestamp = NOW() WHERE id = ?", [id])
        .then((res)=>{
            return res
        })
        .catch((err)=>{
            return err
        })

    }
}
