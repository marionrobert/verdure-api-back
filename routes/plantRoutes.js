const fs = require('fs') //va nous permettre de supprimer des images locales
const withAuth = require('../withAuth')
const adminAuth = require('../adminAuth')

module.exports = (app,db)=>{
    const plantModel = require('../models/PlantModel')(db)

    //route permettant de récupérer toutes les plantes
    app.get("/api/v1/plants", async(req, res, next)=>{
      let allPlants = await plantModel.getAllPlants()
      if(allPlants.code){
        res.json({status: 500, msg: "La requête n'a pas abouti", err: allPlants})
      } else {
        res.json({status: 200, results: allPlants})
      }
    })


    //route permettant de récuperer une seule plante
    app.get("/api/v1/plant/:id", async(req, res, next)=>{
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'id renseigné n'est pas un nombre"})
      } else {
        let plant = await plantModel.getOnePlant(req.params.id)
        // console.log("from plantRoutes")
        // console.log(plant)
        if(plant.code){
          res.json({status: 500, msg: "La requête n'a pas pu aboutir", err: plant})
        } else {
          if (plant.length === 0) {
            res.json({status: 204, msg: "Il n'y a pas de plante dans la base de données correspond à l'id renseigné.", plant: plant})
          } else {
            res.json({status: 200, results: plant[0]})
          }
        }
      }
    })


    //route permettant d'enregistrer une plante (REMETTRE ADMINAUTH)
    app.post("/api/v1/plant/save", adminAuth, async(req, res, next)=>{
      let plant = await plantModel.saveOnePlant(req)
      // console.log(plant)
      if(plant.code){
        res.json({status: 500, msg: "Une erreur est survenue: la création d'une nouvelle plante n'a pas pu aboutir.", err: plant})
      } else {
        res.json({status: 200, msg: "La nouvelle plante a bien été créée", plant: plant})
      }
    })


    //route d'ajout d'une image dans l'api (stock une image et retourne au front le nom de l'image stocké)
    app.post('/api/v1/plant/pict', adminAuth, (req, res, next) =>{
        //si on a pas envoyé de req.files via le front ou que cet objet ne possède aucune propriété
		if (!req.files || Object.keys(req.files).length === 0) {
			//on envoi une réponse d'erreur
	    	 res.json({status: 400, msg: "La photo n'a pas pu être récupérée"});
	    }
	    //la fonction mv va envoyer l'image dans le dossier que l'on souhaite.
	    req.files.image.mv('public/images/'+req.files.image.name, function(err) {
	    	console.log('ok', '/public/images/'+req.files.image.name)
	    	//si ça plante dans la callback
		    if (err) {
		    //renvoi d'un message d'erreur
		      res.json({status: 500, msg: "La photo n'a pas pu être enregistrée"})
		    }
		 });
	    //si c'est good on retourne un json avec le nom de la photo vers le front
        res.json({status: 200, msg: "image bien enregistrée!", url: req.files.image.name})
    })


    //route permettant de modifier une plante
    app.put("/api/v1/plant/update/:id", adminAuth, async(req, res, next)=>{
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'id renseigné n'est pas un nombre"})
      } else {
        let plant = await plantModel.updateOnePlant(req, req.params.id)
        if (plant.code){
          res.json({status: 500, msg: "La plante n'a pas pu être mise à jour.", err: plant})
        } else {
          res.json({status: 200, msg: "La plante a bien été mise à jour.", plant: plant})
        }
      }
    })


    //route permettant de supprimer une plante
    app.delete("/api/v1/plant/delete/:id", adminAuth, async(req, res, next)=>{
      if (isNaN(req.params.id)){
        res.json({status: 500, msg: "L'ide renseigné n'est pas un nombre"})
      } else {
        let plant = await plantModel.deleteOnePlant(req.params.id)
        if (plant.code){
          res.json({status: 500, msg: "La plante n'a pas pu être supprimée.", err: plant})
        } else {
          res.json({status: 200, msg: "La plante a bien été supprimée."})
        }
      }
    })

}
