#BLOG
**API RESTful**

- nom (string), nom de la catégorie
- id (string), identifiant unique du categorie

**/API/articles/add**
Permet d'ajouter un nouveau article.

Voici les parametre qui va avec l'article:

- titre (string), titre du de l'article
- contenu (string), Contenu de l'article
- image (string), URL de l'image de l'article
- categorie_id (int), Identifiant unique du categorie

***/API/categories/read***

>Cela permet de lister une categorie avec les parametre dans l'API'.

Choisir la methode GET dans l'outil Postman  puis entrer l'endpoint associé.

***/API/categories/update***

>Permet de modifier le contenu de la categorie dans l'API'.

Pour modifier on doit choisir PUT dans l'outil Postman et entrer l'endpoint correspond.

***/API/articles/delete***

>Permet de suprimer une catégorie dans un API a partir de son identifiant unique.

Choisir la methode delete dans l'outil Postman pour suprimé une catégorie.

