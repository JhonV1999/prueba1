<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registra Cliente</title>
</head>
<body>

<div class="container">
<h1>Registra Cliente</h1>
	
	<c:if test="${sessionScope.MENSAJE != null }">
			<div class="alert alert-success" id="success-alert">
	 		   <button type="button" class="close" data-dismiss="alert">x</button>
				${sessionScope.MENSAJE}				
			</div>
	</c:if>
	<c:remove var="MENSAJE"/>

	<form action="registraCliente" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="nom_cliente">Nombres</label>
				<input class="form-control" type="text" id="nom_cliente" name="cliente.nom_cliente" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="ape_cliente">Apellidos</label>
				<input class="form-control" type="text" id="ape_cliente" name="cliente.ape_cliente" placeholder="Ingrese el precio">
			</div>
			<div class="form-group">
				<label class="control-label" for="dni_docente">Dni</label>
				<input class="form-control" type="text" id="dni_docente" name="cliente.dni_docente" placeholder="Ingrese el stock">
			</div>
			<div class="form-group">
				<label class="control-label" for="fec_nac_cliente">Fecha de Nacimiento</label>
				<input class="form-control" type="text" id="fec_nac_cliente" name="cliente.fec_nac_cliente" placeholder="Ingrese el precio">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_Tipo">Tipo</label>
				<select id="id_Tipo" name="cliente.tipo.cod_tipo" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Producto</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">
	$.getJSON("cargaTipo",{}, function(data,q,txt){
		$.each(data.lstTipo, function(key,value){
			$("#id_Tipo").append("<option value='" + value.cod_tipo +  "'>" + value.nom_tipo + "</option>")
		})
	});
</script>
	
<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nombre: {
        		selector :"#nom_cliente",
        		validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
        	precio: {
        		selector :"#ape_cliente",
                validators: {
                    notEmpty: {
                        message: 'El apellido es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El apellido es de 3 a 40 caracteres',
                    	min : 3,
                    	max : 40
                    }
                }
            },
            stock: {
            	selector :"#dni_docente",
                validators: {
                    notEmpty: {
                        message: 'El Dni es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'El DNI tiene 8 dígitos'
		            },
                }
            },
            fecha: {
            	selector :"#fec_nac_cliente",
                validators: {
                    notEmpty: {
                        message: 'La fecha es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^\d{4}([\-/.])(0?[1-9]|1[1-2])\1(3[01]|[12][0-9]|0?[1-9])$/,
                        message: 'La fecha debe ser en formato YYYYY-MM-dd'
		            },
                }
            },
            Tipo: {
            	selector :"#id_Tipo",
                validators: {
                    notEmpty: {
                        message: 'La Tipo es un campo obligatorio'
                    }
                }
            },
          
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>


</body>
</html>




