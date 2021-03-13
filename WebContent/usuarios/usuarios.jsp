<%@ page import="com.senati.web.jsps.servelets.vo.VOLogin"%>
<%@ page import java.util.List %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Control de Usuarios</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link 
	rel="stylesheet"
	type="text/css" 
	href="..css/bootstrap.min.css">
<script 
	src="../js/bootstrap.min.js">
</script>
<script>
  function guardar(){
	   var forma = document.getElementById("formaUsuarios");
	   forma.action = "../adminUsuarios.servelet";
	   var accion = document.getElementById("accion");
	   accion.value="guardar";
	   forma.submit();
  }
  function actualizar(){
	   var forma = document.getElementById("formaUsuarios");
	   forma.action = "../adminUsuarios.servelet";
	   var accion = document.getElementById("accion");
	   accion.value="actualizar";
	   forma.submit(); 
  }
  function eliminar() {
	   var forma = document.getElementById("formaUsuarios");
	   forma.action = "../adminUsuarios.servelet";
	   var accion = document.getElementById("accion");
	   accion.value="eliminar";
	   forma.submit();
  }
</script>
</head>
<body>
	<div class="container">
	<!-- final -->
		<div class="row">
		<!-- Grupo 1 de columnas -->			
			<div class="col-md-2">
								
			</div>
			<!--  Grupo 2 de columnas -->
			<div class="col-md-8">
				<h1 class="text-center">Escuela de Tecnologias de la Información</h1>
				<h2 class="text-center">Panel principal</h2>
				<h3 class="text-center">Sistema</h3>
				<p class="text-center">				
					<%= ((VOLogin)session.getAttribute("usuariologueado")).getNombre() %>
				</p>
				<form action="" method="post" id="formausuarios">
				    <input type="hidden" name="accion" id="accion">
				    <div class="form-group">
				        <label>Usuario</label>
				        <input type="text" name="usuario" class="form-control">
				        <label>Clave</label>
				        <input type="text" name=clave" class="form-control">
				        <label>Nombres</label>
				        <input type="text" name="nombre" class="form-control">
				        <label>Edad</label>
				        <input type="text" name="edad" class="form-control">     
				  </div>
				  <input type="button" value="Guardar" class="btn  btn-primary" onclick="guardar();">
				  <input type="button" value="Actualizar" class="btn  btn-primary" onclick="actualizar();">
				  <input type="button" value="Eliminar" class="btn  btn-primary" onclick="eliminar();">
			  </form>
			  <table class="table table-condensed">
			      <tr>
			         <th>Usuario</th>
			         <th>Nombre</th>
			         <th>Edad</th>
			      </tr>
			      
			    </table>       
			</div>
			<div class="col-md-2">
								
			
		</div>	
	</div>

 </body>
</html>