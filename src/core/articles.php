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
        if ($result['code']==0){
            return array('id'=>$this->connection->getLastInsertId());
        } else {
            return $result;
        }
    }

    function update(int $id, string $titre, string $contenu, string $image, int $categorie_id){
        $paramKey= '';
        $paramValue= []; 
        if (!empty($titre)){
            $paramKey= $paramKey . 'titre= ?';
            $paramValue= [...$paramValue, $titre];
        }
        if (!empty($contenu)){ 
            if ($paramKey!=''){
                $paramKey= $paramKey . ',';
            }
            $paramKey= $paramKey . 'contenu= ?';
            $paramValue= [...$paramValue, $contenu];
        }
        if (!empty($image)){
            if ($paramKey!=''){
                $paramKey= $paramKey . ',';
            } 
            $paramKey= $paramKey . 'image= ?';
            $paramValue= [...$paramValue, $image];
        }
        if (!empty($categorie_id) || $categorie_id!=0){
            if ($paramKey!=''){
                $paramKey= $paramKey . ',';
            }
            $paramKey= $paramKey . 'categorie_id= ?';
            $paramValue= [...$paramValue, $categorie_id];
        }
        $sql= 'UPDATE articles SET '.$paramKey.' WHERE id= ?';
        $paramValue= [...$paramValue, $id];
        $result = $this->connection->ExecuteQuery($sql, $paramValue);
        return $result;
    }

    function delete(int $id){
        $sql= 'DELETE FROM articles WHERE id= ?';
        $param= [$id];
        $result = $this->connection->ExecuteQuery($sql, $param);
        return $result;
    }

}
?>