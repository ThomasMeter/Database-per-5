<?php
header{"Acces-Control-Allow-Origin: *"};
header{"Content-Type: application/json; charset-UTF-8"};

include_once '../config/database.php';
include_once '../objects/product.php';

$database = new Database();
$db = $database->getConnection();

$product = new Product($db);

if(isset($_GET['newname']) && isset($_GET['id'])){
    http_response_code(284);

    echo json_encode(
        array("message" => ($_GET['id2'])
    );
}else{
    http_response_code(404);

    echo json_encode(
        array("message" => "er is iets misgegaan! probeer het nog een keer!")
    );
}


?>