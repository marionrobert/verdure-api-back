# Bienvenue sur *Verdure* : Découvrez un large choix de plantes pour habiller votre intérieur 🌻🪴
Verdure est une application web de vente en ligne de plantes d'intérieur.

Bienvenue dans la partie backend de ce projet !

<br/>

## Contexte de développement 💻
Il s'agit d'un projet éducatif développé en tant que projet final de la formation "Développeur web FullStack Javascript" à la 3w Academy.

<br/>

## Installation et Configuration ⚙️🛠️

### Prérequis système :
L'application tourne actuellement sur :
- Node.js (version 16.15.1)
- Npm (version 8.11.0)

Voici la liste des packages et leur version utilisés dans ce projet : 
```
"dependencies": {
    "bcrypt": "^5.1.0",
    "cors": "^2.8.5",
    "dotenv": "^16.4.5",
    "express": "^4.18.2",
    "express-fileupload": "^1.4.0",
    "jsonwebtoken": "^9.0.0",
    "nodemon": "^2.0.22",
    "promise-mysql": "^5.2.0",
    "stripe": "^12.11.0"
  }
```
<br/>

### Étapes d'installation :
1. Clonez le dépôt Git : `git clone https://github.com/marionrobert/verdure-api-back.git`
2. Assurez-vous d'avoir la stack technologique installée avec les bonnes versions.
3. Lancer la commande `npm install` pour installer les dépendances.
4. Créez un fichier **.env** à la racine du projet et ajoutez-y les variables d'environnement suivantes :
   - `SECRET` pour signer et vérifier les JSON Web Tokens (JWT)
   - `STRIPE_API_KEY_TEST` pour l'utilisation de l'api stripe en mode test. Pour obtenir cette clé, vous devez créer un compte stripe.
5. Créez les fichiers **config.js** (pour le production) et **config-offline.js** (pour le développement) à la racine de votre projet pour y mettre les informations concernant votre DB.
   ```
   module.exports = {
       db: {
            host: "YOUR HOST",
            database: "YOUR DB",
            user: "YOUR USER",
            password: "YOUR PASSWORD"
        }
   };
   ```

8. Pour démarrer le serveur, vous avez deux options :
   - `npm start`
   - `npm dev` : cette deuxième option utilise nodemon pour actualiser le serveur à chaque modification de votre code

<br/>

## Contenu des fichiers 📁🗃️

Le projet est organisé en plusieurs dossiers : 
- **models** : ce dossier contient l'ensemble des modèles de données : *OderModel, PlantModel, UserModel*. Ces fichiers définissent des méthodes pour interagir avec la base de données et effectuer des opérations telles que la récupération, la création, la mise à jour et la suppression des entrées.
- **routes** : Ce dossier contient les fichiers de configuration des routes de l'API REST de l'application, tels que `authRoutes.js`, `userRoutes.js`, `orderRoutes.js` et `plantRoutes.js`. Chaque fichier définit des routes pour différentes fonctionnalités de l'application, en appelant les méthodes appropriées des modèles.
    - Par exemple, pour le fichier `plantRoutes`, les routes incluent la récupération de toutes les plantes, la récupération d'une seule plante par ID, l'enregistrement d'une nouvelle plante, l'ajout d'une image pour une plante, la mise à jour et la suppression d'une plante existante. Pour les routes sensibles, il utilise le middleware adminAuth pour assurer que l'utilisateur authentifié possède les autorisations nécessaires.
    - Particularité du fichier `authRoutes.js` : ce fichier gère la route liée à l'authentification dans l'application *GET /api/v1/user/checkToken* qui permet à un utilisateur authentifié de vérifier son token d'authentification et de récupérer ses informations d'utilisateur associées à partir de la base de données. Cela facilite la reconnexion automatique du frontend et permet de maintenir une session utilisateur active.
- **public** : il contient les ressources statiques, des images principales, car le css, peu conséquent, a été intégré directement dans les vues.
- les fichiers middlewares **withAuth** et **adminAuth** utilisés pour authentifier les utilisateurs et pour s'assurer qu'ils ont les autorisations nécessaires pour accéder à certaines routes.

<br/>

## Particularités
(stripe) + (enrgistrement image)
<br/>

## Dossier lié 🔗
La partie front-end de l'application est accessible [ici]([https://github.com/marionrobert/verdure-front-react)
