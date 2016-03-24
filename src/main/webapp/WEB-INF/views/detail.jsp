<%-- 
    Document   : detail
    Created on : 24 mars 2016, 14:27:16
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Detail</h1>
        <table>
            <thead>
            <th> Id</th>
            <th> Nom</th>
            <th> Prénom</th>
            </thead>
            <tr>
                <td>${effacemoi.id}</td>
                <td>${effacemoi.nom}</td>
                 <td>${effacemoi.prenom}</td>
            </tr>
        </table>
            <a href='<c:url value="/effacemoi/lister"></c:url>'>Retour liste</a>
    </body>
</html>
