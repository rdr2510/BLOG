<?php
    
    class Connection{
        private string $serveur;
        private string $username;
        private string $password;
        private string $database;

        private $myConnection;
        
        function __construct(string $server= 'localhost', string $username= 'root', string $password= '', string $database= 'blog'){
            $this->serveur= $server;
            $this->username= $username;
            $this->password= $password;
            $this->database= $database;
        }
        
        public function getConnection(){
            return $this->myConnection;
        }

        public function getLastInsertId(){
            return $this->myConnection->lastInsertId();
        }

        public function Connect(){
            try {
                $this->myConnection = new PDO('mysql:host='.$this->serveur.';dbname='.$this->database, $this->username, $this->password);
                $this->myConnection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                $this->myConnection->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);
                $this->myConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $error['code']= 0;
                $error['message']= 'Connection avec la base de donnée avec succés';
                return array('erreur_serveur'=>$error);
            } catch(PDOException $e) {
                $error['code']= $e->getCode();
                $error['message']= $e->getMessage();
                return array('erreur_serveur'=>$error);
            }
        }

        public function DisConnect(){
            if (isset($this->myConnection)){
                $this->myConnection=null;
            }
        }

        public function ExecuteQuerySelect(string $sql, string $param){
            try{
                $stmt = $this->myConnection->prepare($sql);
                $stmt->execute($param);
                $rows= $stmt->fetchAll(PDO::FETCH_ASSOC);
                $error['code']= 0;
                $error['message']= 'Execution de la requete avec succés';
                return array('erreur_serveur'=>$error, 'count'=>count($rows), 'rows'=>$rows);
            } catch (PDOException $e){
                $error['code']= $e->getCode();
                $error['message']= $e->getMessage();
                return array('erreur_serveur'=>$error);
            }
        }

        public function ExecuteQuery(string $sql, string $param){
            try{
                $stmt = $this->myConnection->prepare($sql);
                $stmt->execute($param);
                $error['code']= 0;
                $error['message']= 'Execution de la requete avec succés';
            }catch(PDOException $e){
                $error['code']= $e->getCode();
                $error['message']= $e->getMessage();
            }
            return array('erreur_serveur'=>$error);
        }
    }
?>