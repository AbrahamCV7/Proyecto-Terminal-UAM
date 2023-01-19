<?php
include_once 'database.php';
    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset();
        session_destroy();
    }

    $db = new Database();
    $id = $_GET['id'];

    if(!isset($_SESSION['rol'])){
        header('location: login.php');    
    }else{
        if(strcmp($_SESSION['rol'],"Profesor") == 0 || strcmp($_SESSION['rol'],"RGT")==0 || strcmp($_SESSION['rol'],"Coordinador") == 0){
            //No puede entrar a la pagina si no es Coordinador, RGT o Profesor
        }else{
            header('location: login.php'); //Te redirige al login si no tienes rol (no hay sesion)
        }
    }

    //Recupera los datos del formulario y los guarda en la base de datos
    if(isset($_POST['enviar'])){
        if(strlen($_POST['actividadEvalua']) >= 1){

            $supera = $_POST['supera'];
            $logra = $_POST['supera'];
            $parcialmente = $_POST['parcialmente'];
            $noLogra = $_POST['noLogra'];
            $total = $supera+$logra+$parcialmente+$noLogra;

            $queryE = $db->connect()->prepare('SELECT supera FROM atrib_2022iac WHERE id='.$id);
            $queryE->execute();
            $rowE = $queryE-> fetch(PDO::FETCH_NUM);

            $queryA = $db->connect()->prepare('UPDATE atrib_2022iac SET contestado=\'OK\',total='.$total.',supera='.$supera.',logra='.$logra.',parcial='.$parcialmente.',no_logra='.$noLogra.'  WHERE id='.$id);
            $queryA->execute();   
            header('location: profesor.php');         
        }
    }

    //Obtiene los datos de la evaluacion con el id recibida
    $query = $db->connect()->prepare('SELECT * FROM atrib_2022iac WHERE id='.$id);
    $query->execute();
    $row = $query-> fetch(PDO::FETCH_NUM);  
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <title>Profesor</title>

    <link rel="stylesheet" href="profesorCuestionario.css">
</head>
<body>

    <header class="infoProfesor">
        <p class="infoDatos"><?php echo $row[3]; ?></p>
        <p class="infoDatos"><?php echo $_SESSION['nombre'] ?></p>
        <p class="infoDatos"><?php echo $row[4]; ?></p>
    </header>

    <section class="info">
        <section class="infoMateria">
            <h1>Datos de la materia</h1>
            <table>
                <tr>
                    <td><p>Nombre UEA</p></td>
                    <td><p name="nameUEA"><?php echo $row[2]; ?></p></td>
                </tr>
                <tr>
                    <td><p>Clave UEA</p></td>
                    <td><p name="claveUEA"><?php echo $row[1]; ?></p></td>
                </tr>
                <tr>
                    <td><p>Atributo</p></td>
                    <td><p name="atributoInfo"><?php echo $row[5]; ?></p></td>
                </tr>
                <tr>
                    <td><p>Criterio</p></td>
                    <td><p name="criterioInfo"><?php echo $row[6]; ?></p></td>
                </tr>
                <tr>
                    <td><p>Indicador</p></td>
                    <td><p name="indicadorInfo"><?php echo $row[7]; ?></p></td>
                </tr>
            </table>
        </section>
        <section class="infoActividad">
            <h1>Actividad a evaluar</h1>
            <textarea name="" id="" cols="30" rows="10" disabled><?php echo $row[8]; ?></textarea>
        </section>
    </section>

    <section class="formulario">
        <form method="POST">
            <div class="formBox">
                <label>De la actividad que realizo para evaluar el cumplimiento del indicador, seleccione 
                    marcando el tipo de actividad que enviara como evidencia.
                </label>
                <br>
                <div class="radioBox">
                    <input type="radio" id="op1" name="actividadEvalua" value="email" required/>
                    <label for="contactChoice1">Solución de problemas o preguntas de tareas, ejercicios o exámenes.</label>
                </div>
                <div class="radioBox">
                    <input type="radio" id="op2" name="actividadEvalua" value="phone" />
                    <label for="contactChoice2">Reporte escrito de una práctica, desarrollo o tema de investigación.</label>
                </div>
                <div class="radioBox">
                    <input type="radio" id="op3" name="actividadEvalua" value="mail" />
                    <label for="contactChoice3">Desarrollo de un programa, módulo, aplicación, componente de un sistema o proceso.</label>
                </div>
                <div class="radioBox">
                    <input type="radio" id="op4" name="actividadEvalua" value="mail" />
                    <label for="contactChoice3">Diseño o modelado de un algoritmo, módulo, componente de un sistema o de un proceso.</label>
                </div>
                <div class="radioBox">
                    <input type="radio" id="op5" name="actividadEvalua" value="mail" />
                    <label for="contactChoice3">Estimación de costos o tiempos para el desarrollo de componentes o proyectos.</label>
                </div>
                <div class="radioBox">
                    <input type="radio" id="op6" name="actividadEvalua" value="mail" class="radioAct"/>
                    <label for="contactChoice3">Exposición oral, ya sea presencial o virtual.</label>
                </div>
            </div>
            <div class="formBox">
                <label for="" class="instruccion">Del total de alumnos(as) evaluados(as), coloque el número de alumnos(as) que "supera" el desempeño del indicador.</label>
                <br>
                <input type="number" name="supera" id="" class="formText" required>
            </div>
            <div class="formBox">
                <label for="" class="instruccion">Del total de alumnos(as) evaluados(as), coloque el número de alumnos(as) que "logra" el desempeño del indicador.</label>
                <br>
                <input type="number" name="logra" id="" class="formText" required>
            </div>
            <div class="formBox">
                <label for="" class="instruccion">Del total de alumnos(as) evaluados(as), coloque el número de alumnos(as) que "parcialmente no logra" el desempeño del indicador.</label>
                <br>
                <input type="number" name="parcialmente" id="" class="formText" required>
            </div>
            <div class="formBox">
                <label for="" class="instruccion">Del total de alumnos(as) evaluados(as), coloque el número de alumnos(as) que "no lo logra" el desempeño del indicador.</label>
                <br>
                <input type="number" name="noLogra" id="" class="formText" required>
            </div>
            <input type="submit" value="Enviar" id="enviar" class="enviar" name="enviar"/>
        </form>
    </section>
    <footer class="inferior">
        <a href="profesor.php">Página anterior</a>
        <a href="profesorCuestionario.php?cerrar_sesion=1">Cerrar sesión</a>
    </footer>
   <script src="profesor.js"></script>
</body>
</html>