const withAuth = require('../withAuth')
const jwt = require('jsonwebtoken')
const secret = process.env.SECRET

//routes permettant la gestion de la connexion par token (avec le front qui jouera aussi avec redux)
module.exports = (app, db)=>{
    const userModel = require('../models/UserModel')(db)

    //route de récupération des infos de l'utilisateur par son token (permet la reconnexion automatique du front)
    app.get('/api/v1/user/checkToken', withAuth, async (req, res, next) => {
        let user = await userModel.getOneUser(req.id)
        if(user.code){
            res.json({status: 500, err: user})
        } else {
          let data = {
            id: user[0].id,
            firstName: user[0].firstName,
            lastName: user[0].lastName,
            email: user[0].email,
            role: user[0].role,
            address: user[0].address,
            city: user[0].city,
            zip: user[0].zip,
            phone: user[0].phone
          }
            res.json({status: 200, user: data})
        }
    })
}
