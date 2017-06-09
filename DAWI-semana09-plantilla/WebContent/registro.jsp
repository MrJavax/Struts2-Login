<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head/>
</head>
<body>
	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>
 
 
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
        	<a class="btn btn-primary" href="listando">Ver data</a>
    </s:form>
</body>
</html>