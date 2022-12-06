<?php

$servername = "mysql-conn";
$username = "root";
$password = "esqueciasenha123"
$database = "bdteste"

$link = new mysqli($servername, $username, $password, $database);

if(mysqli_connect_error()){
    print("Conexão falhou: %s\n", mysqli_connect_error());
    exit();
}


?>