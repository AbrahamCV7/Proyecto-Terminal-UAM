<script src="../jquery-3.6.1.min.js" type="text/javascript"></script>   
<?php
    include_once '../database.php';
    
    $db = new Database();
    $criterio = $_POST['criterio'];
   
    //Consulta los indicadores relacionados al criterio seleccionado
    $query = $db->connect()->prepare('SELECT id_indicador,clave_indicador,indicador FROM indicador WHERE criterio_id_criterio='.$criterio);
    $query->execute();
    $row = $query-> fetchAll(PDO::FETCH_NUM);
?>
    <link rel="stylesheet" href="../responsableGrupoTematico.css">
    <option selected="true" disabled="disabled">Seleccione un indicador</option>
    <?php
        foreach($row as $valor){ //Desplieaga los indicadores
    ?>
        <option class="valoresIndicador" value="<?php echo $valor[0];?>">(<?php echo $valor[1]; ?>) <?php echo $valor[2];?></option>
    <?php
        }
    ?>

