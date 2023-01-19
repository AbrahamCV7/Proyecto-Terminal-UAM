<?php
    session_start();

    if(!isset($_SESSION['rol'])){
        header('location: login.php');    
    }else{
        if(strcmp($_SESSION['rol'],"Coordinador") != 0){
            header('location: login.php');
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-COompatible" content="ie=edge">
        <title>Coordinador</title>
    </head>
    <body>
        <h1>Coordinador</h1>
    </body>
</html>    