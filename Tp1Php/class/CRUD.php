<?php

class CRUD extends PDO {

    public function __construct(){
       // parent::__construct('mysql:host=localhost; dbname=tp1test; port=3306; charset=utf8', 'root', ''); //version pour pas webdev

         parent::__construct('mysql:host=localhost; dbname=e2395529; port=3306; charset=utf8', 'e2395529', 'CxdJ3BIn3czU29PBCrth'); //version pour webdev
    }


    // READ
    public function select($table, $field='id', $order='ASC'){
        $sql="SELECT * FROM $table ORDER BY $field $order";
        //    this represente CRUD
        $stmt = $this->query($sql);
        return $stmt->fetchAll();
        
    }

    //pour pouboir selctionner des trucs par le id
    public function selectId($table, $value, $field = 'id'){
        $sql="SELECT * FROM $table WHERE $field = '$value'";
        $stmt = $this->query($sql);
        $count = $stmt->rowCount();
        if($count == 1){
            return $stmt->fetch();
        }else{
            header('location:client-index.php');
        }  

    }

    //CREATE
    public function insert($table, $data){

        $nomChamp = implode(", ",array_keys($data));
        $valeurChamp = ":".implode(", :", array_keys($data));

        $sql = "INSERT INTO $table ($nomChamp) VALUES ($valeurChamp)";
        $stmt = $this->prepare($sql);
        foreach($data as $key => $value){
            $stmt->bindValue(":$key", $value);
        }
        $stmt->execute();

        return $this->lastInsertId();

    }

    //DELETE
    public function delete($table, $value, $field = 'id'){

        $sql = "DELETE FROM $table WHERE $field = :$field";
        $stmt = $this->prepare($sql);
        $stmt->bindValue(":$field", $value);
        $stmt->execute();
  //      header('location:client-index.php');

    }


    //UPDATE
    public function update($table, $data, $field='id'){
      
        $queryField = null;
        foreach($data as $key=>$value){
            $queryField .="$key =:$key, ";
        }
        $queryField = rtrim($queryField, ", ");
        
        $sql = "UPDATE $table SET $queryField WHERE $field = :$field";

        $stmt = $this->prepare($sql);
        foreach($data as $key => $value){
            $stmt->bindValue(":$key", $value);
        }
        $stmt->execute();

        // header('Location:client-index.php');
       // var_dump($_POST);

    }


}


?>