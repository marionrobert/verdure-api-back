const fs = require('fs')//va nous permettre de supprimer des images locales
const withAuth = require('../withAuth')
const adminAuth = require('../adminAuth')

module.exports = (app,db)=>{
    const beerModel = require('../models/BeerModel')(db)
    
    //route permettant de récupérer toutes les bières
    
    
    
    
    //route permettant de récuperer une seule bière
    
    
    
    
    //route permettant d'enregistrer une bière
    
    
    
    
    //route d'ajout d'une image dans l'api (stock une image et retourne au front le nom de l'image stocké)
    app.post('/api/v1/beer/pict', adminAuth, (req, res, next) =>{
        //si on a pas envoyé de req.files via le front ou que cet objet ne possède aucune propriété
		if (!req.files || Object.keys(req.files).length === 0) {
			//on envoi une réponse d'erreur
	    	 res.json({status: 400, msg: "La photo n'a pas pu être récupérée"});
	    }
	    //la fonction mv va envoyer l'image dans le dossier que l'on souhaite.
	    req.files.image.mv('public/images/'+req.files.image.name, function(err) {
	    	console.log('ça passe', '/public/images/'+req.files.image.name)
	    	//si ça plante dans la callback
		    if (err) {
		    //renvoi d'un message d'erreur
		      res.json({status: 500, msg: "La photo n'a pas pu être enregistrée"})
		    }
		 });
	    //si c'est good on retourne un json avec le nom de la photo vers le front
        res.json({status: 200, msg: "image bien enregistré!", url: req.files.image.name})
    })
    
    //route permettant de modifier une bière
    
    
    
    //route permettant de supprimer une bière
    
    
    
    
    
}