<?php

class Categories{
    private $connection;

    function __construct($connection){
        $this->connection= $connection;
    }

    function getList(){
        $sql= 'SELECT * FROM categories';
        $param= [];
        $result = $this->connection->ExecuteQuerySelect($sql, $param);
        return $result;
    }

    function get(int $id){
        $sql= 'SELECT * FROM categories WHERE id= ?';
        $param= [$id];
        $result = $this->connection->ExecuteQuerySelect($sql, $param);
        return $result;
    }

    function add(string $nom){
        $sql= 'INSERT INTO categories (nom) VALUES (?)';
        $param= [$nom];
        $result = $this->connection->ExecuteQuery($sql, $param);
        if ($result['erreur_serveur']['code']==0){
            return array('erreur_serveur'=>$result['erreur_serveur'], 'id'=>$this->connection->getLastInsertId());
        } else {
            return $result;
        }
    }

    function update(int $id, string $nom){
        $sql= 'UPDATE categories SET nom= ? WHERE id= ?';
        $param= [$nom];
        $result = $this->connection->ExecuteQuery($sql, $param);
        return $result;
    }

    function delete(int $id){
        $sql= 'DELETE categories WHERE id= ?';
        $param= [$id];
        $result = $this->connection->ExecuteQuery($sql, $param);
        return $result;
    }

}
?>