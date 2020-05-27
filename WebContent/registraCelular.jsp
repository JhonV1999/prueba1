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
<title>Registra Celular</title>
</head>
<body>

<div class="container">
<h1>Registra Celular</h1>
	
	<c:if test="${sessionScope.MENSAJE != null }">
			<div class="alert alert-success" id="success-alert">
	 		   <button type="button" class="close" data-dismiss="alert">x</button>
				${sessionScope.MENSAJE}				
			</div>
	</c:if>
	<c:remove var="MENSAJE"/>

	<form action="registraCelular" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_modelo">Modelo</label>
				<input class="form-control" type="text" id="id_modelo" name="celular.modelo" placeholder="Ingrese el modelo">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_color">Color</label>
				<input class="form-control" type="text" id="id_color" name="celular.color" placeholder="Ingrese el color">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_categoria">Categoria</label>
				<select id="id_categoria" name="celular.categoria.idCategoria" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Celular</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">
	$.getJSON("cargaCategoria",{}, function(data,q,txt){
		$.each(data.lstCategoria, function(key,value){
			$("#id_categoria").append("<option value='" + value.idCategoria +  "'>" + value.nombre + "</option>")
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
        	modelo: {
        		selector :"#id_modelo",
        		validators: {
                    notEmpty: {
                        message: 'El modelo es un campo obligatorio'
                    },
                }
            },
        	color: {
        		selector :"#id_color",
                validators: {
                    notEmpty: {
                        message: 'El color es un campo obligatorio'
                    },
                }
            },
            categoria: {
            	selector :"#id_categoria",
                validators: {
                    notEmpty: {
                        message: 'La Marca es un campo obligatorio'
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




