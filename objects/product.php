<?php
class Product
{
   // database connectie en tabel-naam
   private $conn;
   private $table_name = "product";
   // object properties
   public $id;
   // constructor with $db as database connection
   public function __construct($db)
   {
       $this->conn = $db;
   }
   // read products
   function read()
   {
       // select all query
       $query = "SELECT * FROM " . $this->table_name;
       $result = $this->conn->query($query);
       return $result;
   }

   function delete($id)
   {
       //select all query
       $query = "DELETE FROM `" . $this->table_name ."` WHERE id='$id'";
       $result = $this->conn->query($query);
       return $result;
   }

   function create($naam, $beschrijving, $prijs, $categorie) {
       $query = "INSERT INTO " . $this->table_naam .
                    " ('naam', 'beschrijving', 'prijs', 'categorie_id', 'toegevoegd_op')" .
                    " VALUES ($naam,$beschrijving,$prijs,$categorie,now())";
        $result = $this->conn->query($query);
   }
}