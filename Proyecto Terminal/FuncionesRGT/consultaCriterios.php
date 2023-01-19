<script src="../jquery-3.6.1.min.js" type="text/javascript"></script>   
<?php
    include_once '../database.php';

    $db = new Database();
    $atributo = $_POST['atributo'];

    //Consulta los criterios relacionados al atributo seleccionado
    $query = $db->connect()->prepare('SELECT id_criterio,clave_criterio,criterio FROM criterio WHERE atributo_id_atributo="'.$atributo.'"');
    $query->execute();
    $row = $query-> fetchAll(PDO::FETCH_NUM);
?>
    <link rel="stylesheet" href="../responsableGrupoTematico.css">
    <option selected="true" disabled="disabled">Seleccione un criterio</option>
    <?php
        foreach($row as $valor){ //Desplieaga los criterios
    ?>
        <option class="valoresCriterio" value="<?php echo $valor[0];?>">(<?php echo $valor[1]; ?>) <?php echo $valor[2];?></option>
    <?php
        }
    ?>

