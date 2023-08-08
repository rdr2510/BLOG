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

$app->run();

?>