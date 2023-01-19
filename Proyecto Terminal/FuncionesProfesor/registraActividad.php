<?php
    include_once 'database.php';
    $db = new Database();
    
    //Se guarda en la BD la actividad especificada en la evaluacion con el id recibida
    if(isset($_POST['enviar'])){
        if(strlen($_POST['actividad']) >= 1){
            $acti = trim($_POST['actividad']);
            $query = $db->connect()->prepare('UPDATE atrib_2022iac SET actividad=\''.$acti.'\' WHERE id='.$_POST['id']);
            $valor = $query->execute();
        }
    }
   
?>