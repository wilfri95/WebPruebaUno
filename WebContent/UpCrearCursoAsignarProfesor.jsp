<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/CrearRegistro.css">
<title>Insert title here</title>
</head>
<body class="cuerpo"><br>
		

		<div class="caja">

			<!--Inicio caja t�tulo-->
			<div class="titulo">
			<h1>Director</h1>
			</div>
			<!--Fin caja t�tulo-->
			
			<!--Inicio caja bajada-->
			<div class="bajada" ><br>
			<h3>Crear Curso</h3>
			</div>
			<!--Fin caja bajada-->
			
			
			<!--Inicio caja datos-->
			<div class="entrada">
				<form action="Crear" method="get" class="form-horizontal">
					<div class="form-group">
				    	<label class="col-sm-2 control-label">Nombre:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="nomCurso"  placeholder="Ingrese el nombre del curso" required>
				    	</div>
				    </div>
				  
				  	<div class="form-group">
				  		<div class="col-sm-offset-2 col-sm-10">
				  			<button type="submit" class="btn btn-default" name="enviar">Crear Curso</button>		  			
				  		</div>
				  		<p>${mensaje1}</p>
				  	</div>
				  
				</form>	
				
				
				<!-- Segundo formulario -->	
				<form action="AsignarProfesor" method="get" class="form-horizontal">
					
					<div class="form-group">
				    	<label class="col-sm-2 control-label">C�digo:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="codigo"  placeholder="ID del curso" required>
				    	</div>
				    </div>
				    
				    <div class="form-group">
				    	<label class="col-sm-2 control-label">Rut Profesor:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="rutProfe"  placeholder="Sin puntos y sin d�gito verificador" required>
				    	</div>
				    </div>
				    
				    <div class="form-group">
				    	<label class="col-sm-2 control-label">Rut Jefe de Administraci�n:</label>
				    	<div class="col-sm-10">
				    		<input type="text" class="form-control" name="rutJefe"  placeholder="Sin puntos y sin d�gito verificador" required>
				    	</div>
				    </div>
				  
				  	<div class="form-group">
				  		<div class="col-sm-offset-2 col-sm-10">
				  			<button type="submit" class="btn btn-default" name="enviar">Asignar Profesor</button>
				  		</div>
				  		<p>${mensaje2}</p>
				  	</div>
				  
				</form>
				<!-- fin segundo formulario -->	
				
			</div>
			<!--fin caja datos-->

				
			<!--Inicio caja boton regreso-->
			<div class="boton">
				<form action="Menu.jsp">
					<input type="submit" class="btn btn-default"  value="Volver a Men�">
				</form>
			</div>
			<!--fin caja boton regreso-->
			
			
			<br>
			<br>
			<br>
		</div>
		<!--fin  caja General-->
	</body>
</html>