function Create(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('padding-right',0); 
            $("#response").html(response);
            $("#modal_create").modal("show");              
            Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function FullscreenPDF(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('padding-right',0); 
            $("#response_fullscreen_pdf").html(response);
            $("#modal_fullscreen_pdf").modal("show");              
            Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function Edit(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('padding-right',0); 
            $("#response").html(response);
            $("#modal_edit").modal("show");              
            Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function Delete(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();
                $('body').css('padding-right',0); 
                $("#response").html(response);
                $("#modal_delete").modal("show");              
                Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function Respondable(url) {
    Load(0);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(0);
        },           
        success: function(response) {
                $('body').removeClass('modal-open');
                $('.modal-backdrop').remove();
                $('body').css('padding-right',0); 
                $("#response").html(response);
                $("#modal_responsable").modal("show");              
                Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function solicitarFirmaContratante(url) { 
    $.ajax({
        url: url,
        dataType: 'json',
        beforeSend: function (){
            Load(0);
        },
        success: function(response)  
        {
            if(parseInt(response.status) == 1){
                Alerta("success", response.message);
                if(response.sendemail){
                    SendMail(JSON.stringify(response.sendemail));
                }                        
            }else{
                Alerta("error", response.message);
            }
            Load(0);
        },
        error: function (jqXHR, exception) {
            ajaxError(jqXHR, exception);            
        }
    });
}

function Fullscreen(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('padding-right',0); 
            $("#response_fullscreen").html(response);
            $("#modal_fullscreen").modal("show");              
            Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function Preview(url) {
    Load(1);
    $.ajax({
        url: url,
        beforeSend: function (){
            Load(1);
        },           
        success: function(response) {
            $('body').removeClass('modal-open');
            $('.modal-backdrop').remove();
            $('body').css('padding-right',0); 
            $("#response").html(response);
            $("#modal_preview").modal("show");              
            Load(0);
        },
        error: function(jqxhr, textStatus, errorThrown) {
            console.log(jqxhr.responseJSON);
            Alerta("error", " Error: " + errorThrown + " Status:" + jqxhr.status );
        }
    });	  
}

function Save(modal) {
    asyncCallForm('form_save').then(valid => {    
        if(valid){
            var form            = $("#form_save");
            var url             = form.attr("action");
            var method          = form.attr("method");
            $("#btn_submit").attr("disabled", true);
            
            $.ajax({
                url: url,
                type: method,
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},                
                data: form.serialize(),
                dataType: 'json',
                beforeSend: function (){
                    Load(1);
                },
                success: function(response)  
                {
                    if(parseInt(response.status) == 1){
                        Alerta("success", response.message);
                        if(response.sendemail){
                            SendMail(JSON.stringify(response.sendemail));
                        }                        
                        $("#"+modal).modal("hide");
                        refresh();
                    }else{
                        Alerta("error", response.message);
                        if(response.errors){
                            var mensajes = '<ul>';
                            var error = response.errors;
                            console.log(error);
                            error.forEach(function (elemento, indice, array) {
                                mensajes += '<li>'+elemento+'</li>';
                            });
                            mensajes += '</ul>';    
                            Alerta("error", mensajes);         
                        }
                        $("#btn_submit").attr("disabled", false);
                    }
                    Load(0);
                },
                error: function (jqXHR, exception) {
                    ajaxError(jqXHR, exception);
                    $("#btn_submit").attr("disabled", false);
                }
            });
        }
    });
}


function ajaxError(jqXHR, exception) {
    var msg = '';
    if (jqXHR.status === 0) {
        msg = 'Not connect.\n Verify Network.';
    } else if (jqXHR.status == 404) {
        msg = 'Requested page not found. [404]';
    } else if (jqXHR.status == 500) {
        msg = 'Internal Server Error [500].';
    } else if (exception === 'parsererror') {
        msg = 'No se puede realizar la transaccion por errores de excepcion.';
    } else if (exception === 'timeout') {
        msg = 'Time out error.';
    } else if (exception === 'abort') {
        msg = 'Ajax request aborted.';
    } else {
        msg = 'Uncaught Error.\n' + jqXHR.responseText;
    }
    Alerta("error", msg);
    console.log(msg);
    console.log('exception', exception);
    Load(0);
}

function Alerta(type = null, message) {
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });
    if(type == 'success'){
        toastr.success(message);
    }else if(type == 'info'){
        toastr.info(message);
    }else if(type == 'error'){
        toastr.error(message);
    }else if(type == 'warning'){
        toastr.warning(message);
    }else{
        Toast.fire({
            type: 'question',
            title: message
        });    
    }
}

function Mayuscula(input){
    var text = input.value;
    input.value = text.toUpperCase();
}

function Minuscula(input){
    var text = input.value;
    input.value = text.toLowerCase();
}

function Load(id){
    if(id == 1){
      $(".jm-loadingpage").fadeIn("slow");
    }else{
      $(".jm-loadingpage").fadeOut("slow");
    }    
}

async function asyncCallForm(form) {
    const result = await validateForm(form);
    if (result > 0){
        return false;
    }else{
        return true;
    }
}

function validateForm(form) {
    return new Promise(resolve => {
        var errores    = 0;         
        $("#"+form).find(':required').each(function() {
            var elemento   = this;
            //console.log('validateForm:',elemento);
            if (elemento.value.length > 0){
                $(this).removeClass("is-invalid"); 
                $('#'+elemento.id+'Help').removeClass('text-danger');
                $('#'+elemento.id+'Help').addClass('text-muted');
                $('#'+elemento.id+'Help').html('');            
            }else{
                var campo = $('label[for="'+this.id+'"]').text();
                $(this).addClass("is-invalid");
                $('#'+elemento.id+'Help').removeClass('text-muted');
                $('#'+elemento.id+'Help').addClass('text-danger');
                Alerta("error", 'El campo '+campo+' es requerido.'); 
                $('#'+elemento.id+'Help').html('El campo '+campo+' es requerido.');
                errores++;
            }         
        });
        resolve(errores);
    });
}
function datatables(id, cols = null, button = 1) { 
    var tabla       = $('#'+id);
    var dataurl     = tabla.attr("data-url");
    var datarows    = tabla.attr("data-rows");
    var buttons     = [
        {
            "extend": "copyHtml5",
            "text": "<i class='far fa-copy'></i> Copiar",
            "titleAttr": "Copiar",
            "className": "btn btn-sm btn-warning",
            "action": newexportaction
        },
        {
            "extend": "excelHtml5",
            "text": "<i class='far fa-file-excel'></i> Excel",
            "titleAttr": "Esportar a Excel",
            "className": "btn btn-sm btn-success",
            "action": newexportaction
        },
        {
            "extend": "pdfHtml5",
            "text": "<i class='far fa-file-pdf'></i> PDF",
            "titleAttr": "Esportar a PDF",
            "className": "btn btn-sm btn-danger",
            "action": newexportaction
        },
        {
            "extend": "csvHtml5",
            "text": "<i class='fas fa-file-csv'></i> CSV",
            "titleAttr": "Esportar a CSV",
            "className": "btn btn-sm btn-info",
            "action": newexportaction
        }
    ];

    if(button == null){
        buttons = [];
    }
    tabla.DataTable({
        dom: "<'row'<'col-sm-12 mb-3 text-center'B>>" +
        "<'row'<'col-sm-12 col-md-6 text-left'l><'col-sm-12 col-md-6'f>>" +
        "<'row'<'col-sm-12'tr>>" +
        "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
        buttons: buttons,
        "processing": (dataurl.length > 0)? true : false,
        "serverSide": (dataurl.length > 0)? true : false,
        "ajax": {
            "url": dataurl,
            "type": "POST",
            "headers": {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')}
        },
        "columns": cols,
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": true,
        "responsive": true,
        "iDisplayLength": (parseInt(datarows) > 0)? datarows : 10 , 
        "order": [[ 0, "desc" ]],
        "language": {
                    emptyTable:			"No hay datos disponibles en la tabla.",
                    info:		   			"Del _START_ al _END_ de _TOTAL_ ",
                    infoEmpty:			"Mostrando 0 registros de un total de 0.",
                    infoFiltered:			"(filtrados de un total de _MAX_ registros)",
                    infoPostFix:			"(actualizados)",
                    lengthMenu:			"Mostrar _MENU_ registros",
                    loadingRecords:		"Cargando...",
                    processing:			"Procesando...",
                    search:				"",
                    searchPlaceholder:	"Datos para buscar.",
                    zeroRecords:			"No se han encontrado coincidencias.",
                    paginate: {
                        first:			"Primera",
                        last:				"Última",
                        next:				"Siguiente",
                        previous:			"Anterior"
                    },
                    aria: {
                        sortAscending:	"Ordenación ascendente",
                        sortDescending:	"Ordenación descendente"
                    }
                },      
    });
    var table = tabla.DataTable();
    table.columns( '.all' ).visible( true );
    table.columns( '.hidde' ).visible( false );
    var dataTables_filter   = $(".dataTables_filter");
    var dataTables_length   = $(".dataTables_length");            
    var filter              = $(".dataTables_filter input");
    var iDisplayLength      = $(".dataTables_length select");
    var order               = 0;
    var type                = 'desc';
    if($("#"+id).attr("data-html")){
        var datahtml        = $("#"+id).attr("data-html");
        $('#'+id+'_filter').html('<label>Buscar:<input type="search" class="form-control" placeholder="Datos para buscar."></label>&nbsp;&nbsp;'+datahtml+'');
    }
    if($("#"+id).attr("data-order")){
        var order           = $("#"+id).attr("data-order");
    }
    if($("#"+id).attr("data-type")){
        var type            = $("#"+id).attr("data-type");        
    }
    $("#"+id).DataTable().columns( [ order ] ).order( type ).draw();
    ///*
  
    $('.dataTables_filter input').unbind().keyup(function(e) {
        var value = $(this).val();
        if (value.length>0) {
            table.search(value).draw();
        } else {     
            //optional, reset the search if the phrase 
            //is less then 3 characters long
            table.search('').draw();
        }        
    }); 
}


function newexportaction(e, dt, button, config) {
    var self = this;
    var oldStart = dt.settings()[0]._iDisplayStart;
    dt.one('preXhr', function (e, s, data) {
        // Just this once, load all data from the server...
        data.start = 0;
        data.length = 2147483647;
        dt.one('preDraw', function (e, settings) {
            // Call the original action function
            if (button[0].className.indexOf('buttons-copy') >= 0) {
                $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-excel') >= 0) {
                $.fn.dataTable.ext.buttons.excelHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.excelFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-csv') >= 0) {
                $.fn.dataTable.ext.buttons.csvHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.csvHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.csvFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-pdf') >= 0) {
                $.fn.dataTable.ext.buttons.pdfHtml5.available(dt, config) ?
                    $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config) :
                    $.fn.dataTable.ext.buttons.pdfFlash.action.call(self, e, dt, button, config);
            } else if (button[0].className.indexOf('buttons-print') >= 0) {
                $.fn.dataTable.ext.buttons.print.action(e, dt, button, config);
            }
            dt.one('preXhr', function (e, s, data) {
                // DataTables thinks the first item displayed is index 0, but we're not drawing that.
                // Set the property to what it was before exporting.
                settings._iDisplayStart = oldStart;
                data.start = oldStart;
            });
            // Reload the grid with the original page. Otherwise, API functions like table.cell(this) don't work properly.
            setTimeout(dt.ajax.reload, 0);
            // Prevent rendering of the full data to the DOM
            return false;
        });
    });
    // Requery the server with the new one-time export settings
    dt.ajax.reload();
}
  
function SendMail(array){
    var array       = JSON.parse(array);
    var url         = array.url;
    var apikey      = array.apikey;
    var json        = array.json;
    console.log('url:', url);
    console.log('apikey:', apikey);
    console.log('json:', json);
    json.forEach(function(index, value){
        EnvioApi(url, apikey, JSON.parse(index));
    });

    
}


function EnvioApi(url, endpoint, data){
    var myHeaders = new Headers();
    myHeaders.append('Accept', 'application/json');
    myHeaders.append('Content-Type', 'application/json');
    myHeaders.append('api-key', endpoint);
    console.log(endpoint);
    raw = JSON.stringify(data);
    console.log(raw);
    var requestOptions = {
        method: 'POST',
        headers: myHeaders,
        body: raw,
        redirect: 'follow'
    };

    fetch(url, requestOptions)
    .then(response => response.json())
    .then(result => {
        console.log(result);
    })
    .catch(error => {
        console.log('error', error);
    });

}
