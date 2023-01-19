const abrir = document.getElementById('abrir');
const modal_container = document.getElementById('modal-container');
const cerrar = document.getElementById('cerrar');

function abrirCaja(){
    modal_container.classList.add('show');
}

function cerrarCaja(){
    modal_container.classList.remove('show');
}

function darClick(){
    modal_container.classList.add('show');
}

function valoresModal(idA){
    var id = idA;
    var ob = {id:id};

    $.ajax({
        type: "POST",
        url: "FuncionesProfesor/llenarModal.php",
        data: ob,
        beforeSend: function(objeto){

        },
        success: function(data){
            $("#modal").html(data);
        }
    })
}



