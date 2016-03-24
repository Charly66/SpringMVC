<%-- 
    Document   : liste
    Created on : 24 mars 2016, 12:25:10
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
        <h1>Liste</h1>
        <ul>
            <c:forEach items="${liste}" var="effacemoi">
                <li><a href="detail/${effacemoi.id}">${effacemoi.id}</a></li>
            </c:forEach>
        </ul>
    </body>
</html>
