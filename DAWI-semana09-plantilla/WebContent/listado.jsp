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

<!--  -->
<style>
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 150%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 80);
}
.white_content {
	display: none;
	position: absolute;
	top: 30%;
	left: 31%;
	width: 65%;
	height: 35%;
	padding: 1px;
	border: 2px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
	font-size: 12px;
	padding-top:20px;
	vertical-align: middle;
}
</style>
<script type="text/javascript">
	function verRegistroLibro(){
		document.getElementById("fondo").style.display ='block';
		document.getElementById("divRegistroLibro").style.display ='block';
	}	
	
	function verDatos(codigo,titulo,precio,autor,nacionalidad,fecha){
		$("#codigo").val(codigo);
		$("#idCodigo").val(codigo);
		$("#idTitulo").val(titulo);
		$("#idPrecio").val(precio);
		$("#idAutor").val(autor);
		$("#idNacionalidad").val(nacionalidad);
		$("#idFecha").val(fecha);
		$("#idTipoGrabacion").val("M");
		document.getElementById("fondo").style.display ='block';
		document.getElementById("divEditarLibro").style.display ='block';
	}	
	function ocultaRegistroLibro(){
		//document.getElementById("fondo").style.display ='none';
		//document.getElementById("divRegistroLibro").style.display ='none';
		location.reload();
	}	
	function registrarLibro(){
		$('#idRegistrarLibro').attr('action','grabarLibro');
	}
	function actualizarLibro(){
		$('#idactualizarLibro').attr('action','grabarLibro');
	}

	</script>
<!--  -->
</head>
<body>
	<s:actionerror theme="bootstrap" />
	<s:actionmessage theme="bootstrap" />
	<s:fielderror theme="bootstrap" />

	<div class="container">
		<h1>Listado de Productos</h1>

		<a class="btn btn-primary" href="listando">Ver data</a>
	<!-- 
		<a class="btn btn-primary" href="registro.jsp">Registra</a>
	 -->	
		<a class="btn btn-primary" href="javascript:verRegistroLibro()">Registra</a>
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
	<!-- <a href="javascript:verRegistroLibro()">registrar</a>
	 -->
	<div id="fondo" class="black_overlay"></div>
	
	<div id="divRegistroLibro" class="white_content">
		<s:form action="" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
            label="Registro de Productos">
        <s:textfield
                label="Descripcion"
                name="nombre"
                tooltip="Ingresa la descripción del producto"/>
 
        <s:textfield
                label="Precio"
                name="precio"/>

		<s:textfield
                label="Stock"
                name="stock"/>
		<s:select                
                label="Categoría"
                list="{'Pastillas','Jarabes','Otros'}"
                name="categoria"                
                headerKey="None"
                headerValue="None"/>
        <s:textfield
                label="Fecha"
                name="fechareg"/>
        
 
        
        <s:submit cssClass="btn" value="Registrar"/>
        <!-- <a class="btn btn-primary" href="listando">Ver data</a> -->
        <input type="button"  value="Cancelar" onclick="javascript:ocultaRegistroLibro()"/>
    </s:form>
	</div>

</body>
</html>

