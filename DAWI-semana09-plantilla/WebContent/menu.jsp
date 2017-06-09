<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<h2>Menú</h2>
	<hr>

	<ul id="accordion">
		<li>Productos</li>
		<ul>
			<li><a href="#">Registrar</a></li>
			<li><a href="#">Actualizar</a></li>
			<li><a href="#">Eliminar</a></li>
		</ul>
		<li>Empleados</li>
		<ul>
			<li><a href="#">Registrar</a></li>
			<li><a href="#">Actualizar</a></li>
			<li><a href="#">Eliminar</a></li>
		</ul>
		<li>Ventas</li>
		<ul>
			<li><a href="#">Transaccion</a></li>
		</ul>
		<li>Reportes</li>
		<ul>
			<li><a href="#">Ventas</a></li>
			<li><a href="#">Otros</a></li>
		</ul>
		
	</ul>
	<br>
	<a href="logueo.jsp" target="_parent">Cerrar sesión</a>

	<SCRIPT>
		$("#accordion > li").click(function() {

			if (false == $(this).next().is(':visible')) {
				$('#accordion > ul').slideUp(300);
			}
			$(this).next().slideToggle(300);
		});

		$('#accordion > ul:eq(0)').show();
	</SCRIPT>
</body>

</body>
</html>