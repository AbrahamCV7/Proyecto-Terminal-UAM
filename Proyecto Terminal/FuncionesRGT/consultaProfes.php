<script src="../jquery-3.6.1.min.js" type="text/javascript"></script>   
<?php
    include_once '../database.php';

    $db = new Database();
    $clave = $_POST['clave'];

    //Consulta los profesores relacionados al a la materia seleccionada
    $query = $db->connect()->prepare('SELECT numeco,profesor FROM materia_profesor WHERE clave='.$clave);
    $query->execute();
    $row = $query-> fetchAll(PDO::FETCH_NUM);
?>
    <link rel="stylesheet" href="../responsableGrupoTematico.css">
    <option selected="true" disabled="disabled">Seleccione un profesor</option>
    <?php
        $row = array_unique($row, SORT_REGULAR);
        foreach($row as $valor){ //Despliaga a los profesores
    ?>
        <option class="valoresProfe" value="<?php echo $valor[0];?>"><?php echo $valor[1];?> (<?php echo $valor[0]; ?>)</option>
    <?php
        }
    ?>

