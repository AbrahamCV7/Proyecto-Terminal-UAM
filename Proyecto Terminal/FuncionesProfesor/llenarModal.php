<script src="../jquery-3.6.1.min.js" type="text/javascript"></script>   
<?php

    include_once '../database.php';
    $id = $_POST['id'];
    $db = new Database();

    //Consulta los datos de la evaluacion con el id recibido
    $query = $db->connect()->prepare('SELECT * FROM atrib_2022iac WHERE id='.$id);
    $query->execute();
    $row = $query-> fetch(PDO::FETCH_NUM);

    //Se llena el modal de "profesor.php" con los datos obtenidos
?>
    <link rel="stylesheet" href="../profesor.css">
   
    <div class="info">
        <p class="infoMateria"><?php echo $row[2];?> (<?php echo $row[1];?>)</p>
        <p class="infoACI"><?php echo $row[5];?></p>
        <p class="infoACI"><?php echo $row[6];?></p>
        <p class="infoACI"><?php echo $row[7];?></p>
    </div>
    <form class="formularioActi" method="POST">
        <label class="desForm" for="">Describa la actividad a evaluar</label>
        <br/>
        <textarea name="actividad" id="actividad" class="txtActividad"></textarea>
        <input type="text" name="id" id="id" value="<?php echo $row[0]; //Se pasa el id de la evaluacion?>" hidden/>
        <input type="submit" class="enviar" value="evniar" name="enviar"/>
    </form>
    <a class="cerrarBtn" id="cerrar" onclick="cerrarCaja()">Cerrar</a>

