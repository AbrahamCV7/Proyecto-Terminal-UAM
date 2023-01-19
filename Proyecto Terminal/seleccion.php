<?php
    include_once 'database.php';

    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset();
        session_destroy();
    }
    
    if(!isset($_SESSION['rol'])){
        header('location: login.php');    
    }else{

    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-COompatible" content="ie=edge">

        <link rel="stylesheet" href="seleccion.css">
        <title>Seleccion</title>
    </head>
    <body>
        <div class="rol">
            <h3>Seleccione rol que desea usar</h3>
            <div class="roles">
                <?php
                if(strcmp($_SESSION['rol'],"Coordinador")==0){
                ?>
                    <a href="coordinador.php" class="enlace">Coordinador</a>
                    <a href="responableGrupoTematico.php" class="enlace">Responsable de Grupo Tematico</a>
                    <a href="profesor.php" class="enlace">Profesor</a>
                <?php
                }else if(strcmp( $_SESSION['rol'],"RGT")==0){
                ?>
                    <a href="responsableGrupoTematico.php" class="enlace">Responsable de Grupo Tematico</a>
                    <a href="profesor.php" class="enlace">Profesor</a>
                <?php
                }else{
                ?>
                    <a href="profesor.php" class="enlace">Profesor</a>
                <?php
                }
                ?>
            </div>
        </div>

        <footer class="inferior">
            <a href="seleccion.php?cerrar_sesion=1">Cerrar sesión</a>
        </footer>

    </body>
</html>    