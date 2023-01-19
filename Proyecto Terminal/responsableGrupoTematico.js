function mostrarProfes(){
    document.getElementById("selectProfesor").disabled=false;
}

function mostrarCriterio(){
    document.getElementById("selectCriterio").disabled=false;
}

function mostrarIndicador(){
    document.getElementById("selectIndicador").disabled=false;
}

function cargaProfes(){
    var clave = $("#selectUEA").val();
    //alert("Hola select = "+clave);

    var ob = {clave:clave};

    $.ajax({
        type: "POST",
        url: "FuncionesRGT/consultaProfes.php",
        data: ob,
        beforeSend: function(objeto){

        },
        success: function(data){
            $("#selectProfesor").html(data);
        }
    })
}

function cargaCriterios(){
    var atributo = $("#selectAtributo").val();

    var ob = {atributo:atributo};

    $.ajax({
        type: "POST",
        url: "FuncionesRGT/consultaCriterios.php",
        data: ob,
        beforeSend: function(objeto){

        },
        success: function(data){
            $("#selectCriterio").html(data);
        }
    })

    document.getElementById("selectIndicador").innerHTML='<option selected="true" disabled="disabled">Seleccione un atributo</option>';
}

function cargaIndicadores(){
    var criterio = $("#selectCriterio").val();

    var ob = {criterio:criterio};

    $.ajax({
        type: "POST",
        url: "FuncionesRGT/consultaIndicadores.php",
        data: ob,
        beforeSend: function(objeto){

        },
        success: function(data){
            $("#selectIndicador").html(data);
        }
    })
}