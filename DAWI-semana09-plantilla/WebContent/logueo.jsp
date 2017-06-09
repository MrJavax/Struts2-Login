<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html>
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
 
 
 <div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
        
         <s:form action="sesion" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal"
            label="Acceso al Sistema">
        <s:textfield
                label="Usuario"
                name="ven.usuario"
                placeholder="Usuario"
                tooltip="Usuario"/>
 
        <s:password
                label="Clave"
                placeholder="Clave"
                name="ven.clave"/> 
        
        <s:submit cssClass="btn btn-primary" value="Registrar"/>
        <s:reset  cssClass="btn" value="Limpiar"/>
    </s:form>
        </div>
    </div>
</div>
 
   
</body>
</html>