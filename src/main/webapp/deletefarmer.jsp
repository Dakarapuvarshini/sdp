<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jfsd.model.Farmer" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Farmers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
        }
        /* Top Navbar */
        .navbar {
            background-color: #388E3C; /* Green */
            color: #FFFFFF;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
            padding: 0.5rem 2rem;
        }
        
        .navbar .nav-link {
            color: #FFFFFF !important;
            font-weight: bold;
        }
        .table-header {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border-radius: 5px 5px 0 0;
        }
        .table-row {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .table-row:hover {
            background-color: #f9f9f9;
        }
        .delete-btn {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        /* Add some gap between navbar and table */
        .main-content {
            padding-top: 60px; /* Adjust this value as needed */
        }
    </style>
</head>
<body>
<!-- Top Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">FARM-TECH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="#">Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="addfarmer">Add Farmer</a></li>
            <li class="nav-item"><a class="nav-link" href="viewbuyer">Buyers</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Logout</a></li>
        </ul>
    </div>
</nav>

<div class="main-content">
    <div class="container mt-5">
       
        
        <div class="table-header">
            <h2>Farmers</h2>
        </div>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                	<th>ID</th>
                    <th>Farmer Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Contact</th>
                    <th>Type</th>
                    <th>Location</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the list of farmers -->
                <c:forEach  items="${farmerlist}" var="farmer">
                   <tr>
<td><c:out value="${farmer.id}"></c:out></td>
<td><c:out value="${farmer.name}"></c:out></td>
<td><c:out value="${farmer.email}"></c:out></td>
<td><c:out value="${farmer.password}"></c:out></td>
<td><c:out value="${farmer.contact}"></c:out></td>
<td><c:out value="${farmer.type}"></c:out></td>
<td><c:out value="${farmer.location}"></c:out></td>

<td>
<a href='<c:url value ='delete?id=${farmer.id}'></c:url>'>Delete</a>
</td>
</tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <footer>
    <p style="text-align: center; font-size: small; color: gray;">
        &copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.
    </p>
</footer>
</div>