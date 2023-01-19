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
        if(strcmp($_SESSION['rol'],"RGT") == 0 || strcmp($_SESSION['rol'],"Coordinador") == 0){
           //Si no es RGT o Coordinador no puede acceder a la pagina
        }else{
            header('location: login.php');
        }
    }

    $db = new Database();

    //Obtener las ueas
    $query = $db->connect()->prepare('SELECT clave,uea FROM atributos_uea WHERE grupo_tematico=\''.$_SESSION['grupo_tematico'].'\'');
    $query->execute();
    $row = $query-> fetchAll(PDO::FETCH_NUM);

    //Obtener atributos
    $query2 = $db->connect()->prepare('SELECT * FROM atributo');
    $query2->execute();
    $row2 = $query2-> fetchAll(PDO::FETCH_NUM);

    //Recupera los datos del formulario y los guarda en la base de datos
    if(isset($_POST['enviar'])){
            $claveUEA = $_POST['selectUEA']; //Clave de la UEA
            $query = $db->connect()->prepare('SELECT nombre FROM catalogo_obligatorias WHERE clave=\''.$claveUEA.'\'');
            $query->execute();
            $row = $query-> fetch(PDO::FETCH_NUM); //Consulta nombre de la UEA
            
            $queryC = $db->connect()->prepare('SELECT clave_criterio FROM criterio WHERE id_criterio='.$_POST['selectCriterio']);
            $queryC->execute();
            $rowC = $queryC-> fetch(PDO::FETCH_NUM);

            $queryI = $db->connect()->prepare('SELECT clave_indicador FROM indicador WHERE id_indicador='.$_POST['selectIndicador']);
            $queryI->execute();
            $rowI = $queryI-> fetch(PDO::FETCH_NUM);
            
            $queryE = $db->connect()->prepare('INSERT INTO atrib_2022iac (clave,nombre,grupo_tematico,numero_economico,atributo,criterio,indicador) VALUES (\''.$claveUEA.'\',\''.$row[0].'\',\''.$_SESSION['grupo_tematico'].'\',\''.$_POST['selectProfesor'].'\',\''.$_POST['selectAtributo'].'\',\''.$rowC[0].'\',\''.$rowI[0].'\')');
            $queryE->execute();

            header('location: responsableGrupoTematico.php');         
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Responsable de grupo Tematico</title>
    <link rel="stylesheet" href="responsableGrupoTematico.css">
    <script src="jquery-3.6.1.min.js" type="text/javascript"></script>   
    
</head>
<body>
    <header class="info">
        <p class="infoDes"><?php echo $_SESSION['grupo_tematico']; ?></p>
        <p class="infoDes"><?php echo $_SESSION['nombre']; ?></p>
        <p class="infoDes"><?php echo $_SESSION['numeco']; ?></p>
    </header>
    <section class="UEAProfe">
        <form method="POST">
            <div class="ueas selectBox">
                <label class="textForm">UEA</label>
                <br>
                <select onchange="cargaProfes(); mostrarProfes();" class="selectUEA" name="selectUEA" id="selectUEA">
                    <option selected="true" disabled="disabled" required>Seleccione una UEA</option>
                    <?php
                        foreach($row as $valor){ //Carga todas las materias del grupo tematico al que pertenece le usuario
                    ?>
                        <option class="valoresUEA" value="<?php echo $valor[0];?>"><?php echo $valor[1];?>(<?php echo $valor[0];?>)</option>
                    <?php
                        }
                    ?>
                </select>
            </div>
            <div class="profesores selectBox" id="profesores">
                <label class="textForm">Profesor</label>
                <br>
                <select onchange="mostrarAtributo();" disabled class="selectProfesor" name="selectProfesor" id="selectProfesor" required>
                    <option selected="true" disabled="disabled">Seleccione un profesor</option>
                </select>
            </div>
            <hr class="separador">
            <div class="atributos selectBox">
                <label class="textForm">Atributo</label>
                <br>
                <select onchange="cargaCriterios(); mostrarCriterio();" class="selectAtributo" name="selectAtributo" id="selectAtributo" required>
                    <option selected="true" disabled="disabled" required>Seleccione un atributo</option>
                    <?php
                        foreach($row2 as $valor){ //Carga todos los atributos
                    ?>
                        <option class="valoresProfe" value="<?php echo $valor[0];?>">(<?php echo $valor[0]; ?>) <?php echo $valor[1];?></option>
                    <?php
                        }
                    ?>
                </select>
            </div>
            <div class="criterios selectBox">
                <label class="textForm">Criterio</label>
                <br>
                <select onchange="cargaIndicadores(); mostrarIndicador();" disabled class="selectCriterio" name="selectCriterio" id="selectCriterio" required>
                    <option selected="true" disabled="disabled">Seleccione un criterio</option>
                </select>
            </div>
            <div class="indicadores selectBox">
                <label class="textForm">Indicador</label>
                <br>
                <select disabled class="selectIndicador" name="selectIndicador" id="selectIndicador" required>
                    <option selected="true" disabled="disabled">Seleccione un indicador</option>
                </select>
            </div>
            <input type="submit" value="Enviar" id="enviar" class="enviar" name="enviar"/>
        </form>
    </section>

    <footer class="inferior">
        <a href="seleccion.php">Página anterior</a>
        <a href="responsableGrupoTematico.php?cerrar_sesion=1">Cerrar sesión</a>
    </footer>
    
    <script src="responsableGrupoTematico.js"></script>
</body>
</html>