<?php

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;
//use Slim\Middleware\MethodOverrideMiddleware;
use DI\Container;

require  './vendor/autoload.php';
require_once './core/categories.php';
require_once './core/articles.php';
require_once './includes/config.php';

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

$container = new Container();
$app = AppFactory::create(null, $container);

$app->get('/API/articles/reads', function (Request $request, Response $response, array $args) use ($db){
    $articles= new Articles($db);
    $result= $articles->getList();
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->get('/API/articles/read/{id}', function (Request $request, Response $response, array $args) use ($db){
    $articles= new Articles($db);
    $result= $articles->get((int) $args['id']);
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->post('/API/articles/add', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();
    if (isset($params['titre'])){
        $titre= $params['titre'];
        if (isset($params['contenu'])){
            $contenu= $params['contenu'];
        } else {
            $contenu= '';
        }
        if (isset($params['image'])){
            $image= $params['image'];
        } else {
            $image= '';
        }
        if (isset($params['categorie_id'])){
            $categorie_id= $params['categorie_id'];
            $articles= new Articles($db);
            $result= $articles->add($titre, $contenu, $image, (int)$categorie_id);
        } else {
            $result= array('erreur'=>'Le parametre CATEGORIE_ID ne doit pas etre vide.');
        }
    } else {
        $result= array('erreur'=>'Le parametre NOM ne doit pas etre vide.');
    }    
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->put('/API/articles/update', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();

    if (isset($params['titre'])){
        $titre= $params['titre'];
    } else {
        $titre= '';
    }
    
    if (isset($params['contenu'])){
        $contenu= $params['contenu'];
    } else {
        $contenu= '';
    }

    if (isset($params['image'])){
        $image= $params['image'];
    } else {
        $image= '';
    }

    if (isset($params['categorie_id'])){
        $categorie_id= $params['categorie_id'];
    } else {
        $categorie_id= 0;
    }

    if (isset($params['id'])){
        $id= $params['id'];
        $articles= new Articles($db);
        $result= $articles->update((int)$id, $titre, $contenu, $image, (int)$categorie_id);
    } else {
        $result= array('erreur'=>'Le parametre ID ne doit pas etre vide.');
    }    
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->delete('/API/articles/delete', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();
    if (isset($params['id'])){
        $id= $params['id'];
        $articles= new Articles($db);
        $result= $articles->delete((int)$id);
    } else {
        $result= array('erreur'=>'Le parametre ID ne doit pas etre vide.');
    }    
    $response->getBody()->write(json_encode($result));
    return $response;
});



$app->get('/API/categories/reads', function (Request $request, Response $response, array $args) use ($db){
    $categories= new Categories($db);
    $result= $categories->getList();
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->get('/API/categories/read/{id}', function (Request $request, Response $response, array $args) use ($db){
    $categories= new Categories($db);
    $result= $categories->get((int) $args['id']);
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->post('/API/categories/add', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();
    if (isset($params['nom'])){
        $nom= $params['nom'];
        $categories= new Categories($db);
        $result= $categories->add($nom);
    } else {
        $result= array('erreur'=>'Le parametre NOM ne doit pas etre vide.');
    }    
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->put('/API/categories/update', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();

    if (isset($params['id']) && isset($params['nom'])){
        $id= $params['id'];
        $nom= $params['nom'];
        $categories= new Categories($db);
        $result= $categories->update((int)$id, $nom);
    } else {
        $result= array('erreur'=>'Les parametres ID et NOM ne doivent pas etre vide.');
    }
    $response->getBody()->write(json_encode($result));
    return $response;
});

$app->delete('/API/categories/delete', function (Request $request, Response $response, array $args) use ($db){
    $params= $request->getQueryParams();
    if (isset($params['id'])){
        $id= $params['id'];
        $categories= new Categories($db);
        $result= $categories->delete((int)$id);
    } else {
        $result= array('erreur'=>'Le parametre ID ne doit pas etre vide.');
    }    
    $response->getBody()->write(json_encode($result));
    return $response;
});


$app->run();

?>