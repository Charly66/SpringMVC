<%-- 
    Document   : ajouter
    Created on : 24 mars 2016, 15:02:38
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form:form modelAttribute="effacemoi" action="ajouter">
            Nom : <form:input path="nom"></form:input>
            Prénom : <form:input path="prenom"></form:input>
                <button type="submit">Valider</button>
        </form:form>
    </body>
</html>
