<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login failed</title>
</head>
<body>
<h1><c:out value="${msg}"></c:out></h1>
<a href="/farmerlogin">Try Again</a>
</body>
</html>