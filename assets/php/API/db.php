<?php

    $server = "localhost";
    $userName = "root";
    $password = "";
    $database = "dbprueba";

    $conection = new mysqli($server,$userName,$password,$database);

    if($conection-> connect_error) {
        die("conexion fallida: " . $conection-> connect_error);
    } else {
        echo "conexion exitosa ...";
    }


?>