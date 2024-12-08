<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Farmer Registration Success</title>
</head>
<body>
    <h1><c:out value="${msg}" /></h1>  <!-- This will display the success message -->
    <a href="addfarmer.jsp">Add another Farmer</a>  <!-- Link to go back to the form -->
</body>
</html>
