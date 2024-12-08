<%@page import="com.jfsd.model.Farmer"%>
<%@page import="com.jfsd.model.Buyer"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    
Farmer f=(Farmer)session.getAttribute("farmer");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #388E3C;
            margin-bottom: 20px;
        }
        .profile-info {
            font-size: 18px;
            line-height: 2;
        }
        .profile-info span {
            font-weight: bold;
            color: #388E3C;
        }
        .profile-info .value {
            color: #555;
        }
        .btn-back {
            display: block;
            margin-top: 20px;
            text-align: center;
            width: 100%;
        }
        .btn-back a {
            background-color: #388E3C;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .btn-back a:hover {
            background-color: #2c6b2d;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>My Profile</h3>
    <div class="profile-info">
       
        <p><span>Name:</span> <span class="value"><%=f.getName() %></span></p>
        <p><span>Email:</span> <span class="value"><%=f.getEmail() %></span></p>
        <p><span>Contact:</span> <span class="value"><%=f.getContact() %></span></p>
        <p><span>Location:</span> <span class="value"><%=f.getLocation() %></span></p>
    </div>
    <div class="btn-back">
        <a href="buyerhome">Back to Dashboard</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
