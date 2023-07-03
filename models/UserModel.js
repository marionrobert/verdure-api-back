const bcrypt = require('bcrypt')
const saltRounds = 10

module.exports = (_db)=>{
    db=_db
    return UserModel
}

class UserModel {
    //sauvegarde d'un membre
    static saveOneUser(req){
        
        
        
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