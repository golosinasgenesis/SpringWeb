<%-- 
    Document   : index
    Created on : 06/09/2014, 11:55:40 AM
    Author     : SABADO-MANHANA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${titulo}</title>
    </head>
    <body>
        <h1>Hello Enero!</h1>
        
        <h3>${titulo}</h3>
        <p>${contenido}</p>
        <p>${programa.descripcion}</p>
        
        <c:forEach var="i" items="${nombres}">
            <p><c:out value="${i}"/></p>
        </c:forEach>
    </body>
</html>
