# API RESTful

## LES ENDPOINTS DISPONIBLES:

**_/API/articles/add_**

> Permet d'ajouter un nouveau article.

_Un articles doit contenir les paramètres suivant_:

- titre (string), titre du de l'article.
- contenu (string), Contenu de l'article.
- image (string), URL de l'image de l'article.
- categorie_id (int), Identifiant unique du categorie.

Vous devez choisir la methode POST dans l'outil Postman pour ajouter un nouvel article puis entrer l'endpoint associé.

**_/API/articles/reads_**

> Cette fonction permet de recuperer et de lister toute les articles avec leur parametre.

Il s'suffit de choisir la methode GET dans l'outil Postman et d'entrer l'endpoint correspond a l'action.

**_/API/articles/read_**

> Cela permet de lister un article avec les parametre .

Choisir la methode GET dans l'outil Postman puis entrer l'endpoint associé.

**_/API/articles/update_**

> Permet de modifier un ou tous les parametre dans un article existant dans l'API'.

Pour modifier on doit choisir PUT dans l'outil Postman et entrer l'endpoint correspond.

**_/API/articles/delete_**

> Permet de suprimer un articles dans un API a partir de son identifiant unique.

Choisir la methode delete dans l'outil Postman pour suprimé un article.

**_/API/categories/add_**

> Permet d'ajouter une nouvelle categorie.

Vous devez choisir la methode POST dans l'outil Postman pour ajouter une nouvelle catégorie puis entrer l'endpoint associé.

_Voici les parametres du catégorie:_

- nom (string), nom de la catégorie
- id (string), identifiant unique du categorie

**_/API/categories/reads_**

> Cette fonction permet de lister toute les categories dans l'API

Il s'suffit de choisir la methode GET dans l'outil Postman et d'entrer l'endpoint correspond a l'action.

**_/API/categories/read_**

> Cela permet de lister une categorie avec les parametre dans l'API'.

Choisir la methode GET dans l'outil Postman puis entrer l'endpoint associé.

**_/API/categories/update_**

> Permet de modifier le contenu de la categorie dans l'API'.

Pour modifier on doit choisir PUT dans l'outil Postman et entrer l'endpoint correspond.

**_/API/articles/delete_**

> Permet de suprimer une catégorie dans un API a partir de son identifiant unique.

Choisir la methode delete dans l'outil Postman pour suprimé une catégorie.
