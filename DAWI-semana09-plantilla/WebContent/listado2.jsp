<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>

<!DOCTYPE html>

<html lang="esS">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<sb:head />

</head>
<body>
	<s:actionerror theme="bootstrap" />
	<s:actionmessage theme="bootstrap" />
	<s:fielderror theme="bootstrap" />

	<div class="container">
		<h1>Listado de Productos</h1>

		<a class="btn btn-primary" href="listando">Ver data</a> <a
			class="btn btn-primary" href="registro.jsp">Registra</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th>Id</th>
				<th>Producto</th>
				<th>Precio</th>
				<th>Stock</th>
				<th></th>
				<th></th>
			</tr>
			<s:iterator value="lstproductos">
				<tr class="grilla_campo">
					<td><s:property value="codigo" /></td>
					<td><s:property value="nombre" /></td>
					<td><s:property value="precio" /></td>
					<td><s:property value="stock" /></td>
					<td><s:url id="idEliminar" action="eliminarProd">
							<s:param name="codigo" value="codigo" />
						</s:url> <s:a href="%{idEliminar}">
							<img src="img/delete.gif" title="Eliminar" />
						</s:a>
					</td>
					<td><s:url id="idActualizar" action="cargaProd">
							<s:param name="codigo" value="codigo" />
						</s:url> <s:a href="%{idActualizar}">
							<img src="img/edit.gif" title="Actualizar" />
						</s:a></td>
				</tr>
			</s:iterator>
		</table>
	</div>


</body>
</html>

