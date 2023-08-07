<?php

class Articles{
    private $connection;

    function __construct($connection){
        $this->connection= $connection;
    }

    function getList(){
        $sql= 'SELECT * FROM articles';
        $param= [];
        $result = $this->connection->ExecuteQuerySelect($sql, $param);
        return $result;
    }

    function get(int $id){
        $sql= 'SELECT * FROM articles WHERE id= ?';
        $param= [$id];
        $result = $this->connection->ExecuteQuerySelect($sql, $param);
        return $result;
    }

    function add(string $titre, string $contenu, string $image, int $categorie_id){
        $sql= 'INSERT INTO articles (titre, contenu, image, categorie_id) VALUES (?, ?, ?, ?)';
        $param= [$titre, $contenu, $image, $categorie_id];
        $result = $this->connection->ExecuteQuery($sql, $param);
        if ($result['erreur_serveur']['code']==0){
            return array('erreur_serveur'=>$result['erreur_serveur'], 'id'=>$this->connection->getLastInsertId());
        } else {
            return $result;
        }
    }

    function update(int $id, string $titre, string $contenu, string $image, int $categorie_id){
        $sql= 'UPDATE articles SET titre= ?, contenu= ?, image= ?, categorie_id= ? WHERE id= ?';
        $param= [$titre, $contenu, $image, $categorie_id, $id];
        $result = $this->connection->ExecuteQuery($sql, $param);
        return $result;
    }

    function delete(int $id){
        $sql= 'DELETE articles WHERE id= ?';
        $param= [$id];
        $result = $this->connection->ExecuteQuery($sql, $param);
        return $result;
    }

}
?>