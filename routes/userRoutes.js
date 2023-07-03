const bcrypt = require('bcrypt')
const saltRounds = 10
//librairie qui va générer un token de connexion
const jwt = require('jsonwebtoken')
const secret = 'fsjs26'
const withAuth = require('../withAuth')

module.exports = (app, db)=>{
    const userModel = require('../models/UserModel')(db)
    
    //route d'enregistrement d'un utilisateur
    
    
     //route de connexion d'un utilisateur (c'est ici qu'on va créer le token et l'envoyer vers le front)
    app.post('/api/v1/user/login', async (req, res, next)=>{
        if(req.body.email === ""){
            res.json({status: 401, msg: "Entrez un email..."})
        } else {
            //on check si il existe un utilisateur dans la bdd avec un mail correspondant
            let user = await userModel.getUserByEmail(req.body.email)
            if(user.code){
                res.json({status: 500, msg: "Erreur vérification email.", err: user})
            }else{
                //si il n'existe pas
                if(user.length === 0){
                    res.json({status:404, msg: "Pas d'utilisateur correspondant à ce mail."})
                } else {
                    //la bdd a retourné un objet d'utilisateur pour ce mail
                    //on compare les password avec bcrypt
                    let same = await bcrypt.compare(req.body.password, user[0].password)
                    //si c'est true, les mdp sont identiques
                    if(same){
                        //on va créer le payload du token, dans ce payload on stock les valeurs qu'on va glisser dans le token (attention jamais d'infos craignos)
                        const payload = {email: req.body.email, id: user[0].id, role: user[0].role}
                        //on crée notre token avec sa signature (secret)
                        const token = jwt.sign(payload, secret)
                        let connect = await userModel.updateConnexion(user[0].id)
                        if(connect.code){
                            res.json({status: 500, errr: connect})
                        } else {
                            res.json({status: 200, token: token, user_id: user[0].id})
                        }
                    }else{
                        res.json({status: 401, error: "Votre mot de passe est incorrect!"})
                    }
                }
            }
        }
        
    })
    
    //route de modification des utilisateurs
    
    
    
}