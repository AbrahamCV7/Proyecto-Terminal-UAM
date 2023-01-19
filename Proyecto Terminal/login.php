<?php
    include_once 'database.php';

    session_start();

    $db = new Database();

    if(isset($_GET['cerrar_sesion'])){
        session_unset();
        session_destroy();
    }

    //Si intenta regresar al login cuando ya hay una sesion lo manda a "seleccion.php para no iniciar otra"
    if(isset($_SESSION['rol'])){
        if(strcmp($_SESSION['rol'],"Profesor") == 0 || strcmp($_SESSION['rol'],"Coordinador") == 0 || strcmp($_SESSION['rol'],"RGT") == 0){
            header('location: seleccion.php');
        }
    }

    //Revisa los datos resividos en formulario para loguearse
    if(isset($_POST['nombre']) && isset($_POST['numero_economico'])){
        
        $nombre = $_POST['nombre'];
        $numero_economico = $_POST['numero_economico'];

        //Consulta al profesor que ingreso
        $query = $db->connect()->prepare('SELECT * FROM profesores WHERE nombre = :nombre AND numero_economico = :numero_economico');
        $query->execute(['nombre' => $nombre, 'numero_economico' => $numero_economico]);
        $row = $query-> fetch(PDO::FETCH_NUM);

        if($row == true){ //Valida la existencia del usuario y si es correcto el numero economico

            $numeco = $row[0]; //primera columna es el numero economico en la base de datos
            $_SESSION['numeco'] = $numeco;

            $nom = $row[1]; //segunda columna es el nombre en la base de datos
            $_SESSION['nombre'] = $nom;

            //COnsulta el grupo tematico y rol del usuario 
            $query2 = $db->connect()->prepare('SELECT * FROM roles_grupos WHERE numero_economico = :numero_economico');
            $query2->execute(['numero_economico' => $row[0]]);
            $row2 = $query2-> fetch(PDO::FETCH_NUM);
            
            $_SESSION['rol'] = $row2[1]; // El rol esta en la segunda columna
            $_SESSION['grupo_tematico'] = $row2[2]; // El grupo tematico esta en la tercera columna

            //Si uno de los tres roles lo envia a la pagina "seleccion.php"
            if(strcmp($_SESSION['rol'],"Profesor")  == 0 || strcmp($_SESSION['rol'],"Coordinador") == 0 || strcmp($_SESSION['rol'],"RGT") == 0){
                header('location: seleccion.php');
            }
        }else{
            //No existe el usuario con ese numero economico
            echo "<script>alert('El nombre o numero economico no coinciden')</script>";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-COompatible" content="ie=edge">

        <link rel="stylesheet" href="login.css">
        <title>Login</title>
    </head>
    <body>
        <div class="box">
            Ingrese sus datos para ingresar
            <form action="#" method="POST" id="formulario">
                <label>Nombre</label><br/>
                <input type="text" name="nombre"><br/><br/>
                <label>Numero economico</label><br/>
                <input type="text" name="numero_economico"><br/><br/><br/>
                <input type="submit" value="Iniciar sesión" class="enviar">
            </form>
        </div>
        <script src="login.js"></script>
    </body>
</html>    