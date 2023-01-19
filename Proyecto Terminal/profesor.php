<?php
    include_once 'database.php';
    include 'FuncionesProfesor/registraActividad.php';

    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset();
        session_destroy();
    }

    $db = new Database();

    if(!isset($_SESSION['rol'])){
        header('location: login.php');  //Si no hay un rol (no hay sesion) te redirige al login  
    }else{
        if(strcmp($_SESSION['rol'],"Profesor") == 0 || strcmp($_SESSION['rol'],"RGT")==0 || strcmp($_SESSION['rol'],"Coordinador") == 0){
            //Si tienes uno de los 3 roles puedes entrar
        }else{
            header('location: seleccion.php'); //Te redirige a "seleccionar.php" si no tienes uno de los 3 roles
        }
    }


    //Se consultan datos de las evaluacion asignadas al profesor (por numero economico)
    $query = $db->connect()->prepare('SELECT id,clave,nombre,atributo,criterio,indicador,numero_economico,actividad,contestado FROM atrib_2022iac WHERE numero_economico='.$_SESSION['numeco']);
    $query->execute();
    $row = $query-> fetchAll(PDO::FETCH_NUM);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <title>Profesor</title>
    <link rel="stylesheet" href="profesor.css">
    <script src="jquery-3.6.1.min.js" type="text/javascript"></script>   
</head>
<body>

    <header class="info">
        <p class="infoDatos"><?php echo $_SESSION['grupo_tematico']; ?></p>
        <p class="infoDatos"><?php echo $_SESSION['nombre']; ?></p>
        <p class="infoDatos"><?php echo $_SESSION['numeco']; ?></p>
    </header>

    <section class="boxEvaluaciones">
        <h1 class="boxIndicacion">UEA's disponibles para asignar actividad</h1>

        <?php
            //Se despliegan todas las evaluaciones a las que debe asignar su actividad
            foreach($row as $valor){
                if(strlen($valor[7])<1){
        ?>
                <a class="enlaceUEA" onclick="abrirCaja(); valoresModal(<?php echo $valor[0]?>);" name="<?php echo $valor[0]?>"><?php echo $valor[2]; ?> (<?php echo $valor[3].",".$valor[4].",".$valor[5]; ?>) </a>
        <?php
                }else{
                    //Ya especifico la actividad por lo que ya no se despliaga para llenar
                }
            }
        ?>
    </section>
    <hr class="separador">
    <section class="boxEvaluaciones">
        <h1 class="boxIndicacion">Formularios disponibles para contestar</h1>
        
        <?php
            foreach($row as $valor){
                if(strlen($valor[7])<1){ //NO se ha especificado la actividad por lo que no se puede responder aun el formulario
                }else if(strcmp($valor[8],"OK") == 0){//Ya se respondio asi que se muestra la actividad pero sin opcion a responder de nuevo
                ?>
                    <a class="enlaceUEAR"> <?php echo $valor[2]; ?> (<?php echo $valor[3].",".$valor[4].",".$valor[5]; ?>) YA CONTESTADO</a>
                <?php
                }else{ //Ya tiene especificada la actividad y aun no se responde el formulario

        ?>
            <a class="enlaceUEA" name="<?php echo $valor[0]; ?>" id="<?php echo $valor[0]; ?>" href="profesorCuestionario.php?id=<?php echo $valor[0]; ?>"><?php echo $valor[2]; ?> (<?php echo $valor[3].",".$valor[4].",".$valor[5]; ?>)</a>
        <?php
                }
            }
        ?>
    </section>

    <footer class="inferior">
        <a href="seleccion.php">Página anterior</a>
        <a href="profesor.php?cerrar_sesion=1">Cerrar sesión</a>
    </footer>

   <div class="modal-container" id="modal-container" name="modal-container">
        <div class="modal" id="modal" name="modal">
        
            <div class="info" name="info2" id="info2">
                <p class="infoMateria">UEA</p>
                <p class="infoACI">Atributo</p>
                <p class="infoACI">Criterio</p>
                <p class="infoACI">Indicador</p>
            </div>
            <form class="formularioActi" method="POST"action="registraActividad.php">
                <label class="desForm" for="">Describa la actividad a evaluar</label>
                <br/>
                <textarea name="actividad" id="actividad" class="txtActividad"></textarea>
                <input type="submit" class="enviar" value="evniar" name="enviar"/>
            </form>
            <a class="cerrarBtn" id="cerrar" onclick="cerrarCaja()">Cerrar</a>
        </div>
   </div>

   <script src="profesor.js"></script>
</body>
</html>