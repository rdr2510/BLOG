# API RESTful
## LES ENDPOINTS DISPONIBLES:

***/API/articles/reads***
>Permet de recuperer et de lister toute les articles.
- Les paramètres:
  >non disponible
- Methode: **GET**

##
***/API/articles/read/{id}***
>Permet de lister un article à partir de son identifiant unique ID .
- Les paramètres:
  - **id (int)**, *identifiant unique de l'article.*
- Methode: **GET**
  
##
***/API/articles/add***
>Permet d'ajouter un nouveau article.

- Les paramètres:
  - **titre (string)**, *titre du de l'article.*
  - **contenu (string)**, *Contenu de l'article.*
  - **image (string)**, *URL de l'image de l'article.*
  - **categorie_id (int)**, *Identifiant unique du categorie.*

- Methode: POST

##

***/API/articles/update***

>Permet de modifier un ou tous les parametre dans un article existant dans l'API'.

Pour modifier on doit choisir PUT dans l'outil Postman et entrer l'endpoint correspond.

***/API/articles/delete***

>Permet de suprimer un articles dans un API a partir de son identifiant unique.

Choisir la methode delete dans l'outil Postman pour suprimé un article.

***/API/categories/add***

>Permet d'ajouter une nouvelle categorie.

Vous devez choisir la methode POST dans l'outil Postman pour ajouter une nouvelle catégorie puis entrer l'endpoint associé.

*Voici les parametres du catégorie:*

- nom (string), nom de la catégorie
- id (string), identifiant unique du categorie

***/API/categories/reads***

>Cette fonction permet de lister toute les categories dans l'API

Il s'suffit de choisir la methode GET dans l'outil Postman et d'entrer l'endpoint correspond a l'action.

***/API/categories/read***

>Cela permet de lister une categorie avec les parametre dans l'API'.

Choisir la methode GET dans l'outil Postman  puis entrer l'endpoint associé.

***/API/categories/update***

>Permet de modifier le contenu de la categorie dans l'API'.

Pour modifier on doit choisir PUT dans l'outil Postman et entrer l'endpoint correspond.

***/API/articles/delete***

>Permet de suprimer une catégorie dans un API a partir de son identifiant unique.

Choisir la methode delete dans l'outil Postman pour suprimé une catégorie.

