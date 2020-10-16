<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
// database connection will be here
// include database and object files
include_once '../config/database.php';
include_once '../objects/product.php';
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
// initialize object
$product = new Product($db);
// read products will be here
// query products

if(isset($_GET['id'])){
    $result = $this->conn->query($query);
    // check if more than 0 record found
    if(isset($result)){
    echo "gelukt";
    }
    else{
    // set response code - 404 Not found
    http_response_code(404);
    // tell the user no products found
    echo json_encode(
        array("message" => "Geen producten gevonden")
    );
    }

}