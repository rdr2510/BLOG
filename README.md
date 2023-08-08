# BLOG API RESTful 

*URL: https://apirestblog.000webhostapp.com/*

## ARTICLES
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
  - **titre (string)**, *titre de l'article.*
  - **contenu (string)**, *Contenu de l'article.*
  - **image (string)**, *URL de l'image de l'article.*
  - **categorie_id (int)**, *Identifiant unique du categorie.*

- Methode: **POST**

##
***/API/articles/update***
>Permet de modifier un article existant'.
- Les paramètres:
  - **id (int)**, *Identifiant unique de l'article.*
  - **titre (string)**, *titre de l'article.*
  - **contenu (string)**, *Contenu de l'article.*
  - **image (string)**, *URL de l'image de l'article.*
  - **categorie_id (int)**, *Identifiant unique du categorie.*

- Methode: **PUT**

##
***/API/articles/delete***
>Permet de suprimer un articles à partir de son identifiant unique.
- Les paramètres:
  - **id (int)**, *Identifiant unique de l'article.*

- Methode: **DELETE**
  
##
## CATEGORIES
***/API/categories/reads***
>Permet de recuperer et de lister toute les catégories.
- Les paramètres:
  >non disponible
- Methode: **GET**

##
***/API/categories/read/{id}***
>Permet de lister une catégorie à partir de son identifiant unique ID .
- Les paramètres:
  - **id (int)**, *identifiant unique du catégorie.*
    
- Methode: **GET**

  ##
***/API/categories/add***
>Permet d'ajouter une nouvelle catégorie.
- Les paramètres:
  - **nom (string)**, *titre du catégorie.*

- Methode: **POST**

##
***/API/categories/update***
>Permet de modifier une catégorie existant'.
- Les paramètres:
  - **id (int)**, *Identifiant unique du catégorie.*
  - **nom (string)**, *titre du catégorie.*

- Methode: **PUT**

##
***/API/articles/delete***
>Permet de suprimer une catégorie à partir de son identifiant unique.
- Les paramètres:
  - **id (int)**, *Identifiant unique du catégorie.*

- Methode: **DELETE**

