<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farm-Tech Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        /* General Page Styling */
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #388E3C; /* Green */
            color: #FFFFFF;
            position: sticky; /* Make navbar stick at top */
            top: 0;
            z-index: 10;
            padding: 0.5rem 1rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .navbar .nav-link {
            color: #FFFFFF !important;
            font-weight: 500;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        .navbar .nav-link:hover {
            color: #C8E6C9; /* Light green on hover */
            text-decoration: underline;
        }

        .navbar-brand img {
            margin-right: 10px; /* Space between logo and text */
        }

        .navbar-toggler {
            border: none; /* Remove border around the toggler */
        }

        /* Main Content Styling */
        .main-content {
            padding: 80px 20px;
        }

        .table-header h2 {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 30px;
            color: #388E3C;
        }

        /* Table Styling */
        .table {
            width: 100%;
            margin-bottom: 20px;
            border-radius: 8px;
            overflow: hidden;
        }

        .table th, .table td {
            padding: 15px;
            text-align: center;
            vertical-align: middle;
        }

        .table-striped tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        .table-bordered th, .table-bordered td {
            border: 1px solid #ddd;
        }

        .table img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 5px;
        }

        .table th {
            background-color: #388E3C;
            color: white;
            font-weight: bold;
        }

        /* Footer Styling */
        footer {
            padding: 20px;
            background-color: #388E3C;
            color: white;
            text-align: center;
            font-size: 14px;
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        @media (max-width: 768px) {
            .table th, .table td {
                padding: 10px;
                font-size: 14px;
            }
            .table img {
                width: 80px;
                height: 80px;
            }
            .table-header h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">
            FARM-TECH
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="adminhome.jsp">Dashboard</a></li>
                <li class="nav-item"><a class="nav-link" href="addfarmer">Add Farmer</a></li>
                <li class="nav-item"><a class="nav-link" href="viewbuyer">Buyers</a></li>
                <li class="nav-item"><a class="nav-link" href="adminlogin">Logout</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <div class="table-header">
                <h2>Product List</h2>
            </div>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Unit</th>
                        <th>Description</th>
                        <th>Location</th>
                        <th>Image</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <!-- Iterate over the list of products -->
                    <c:forEach items="${products}" var="product">
                        <tr>
                            <td><c:out value="${product.id}"/></td>
                            <td><c:out value="${product.productName}"/></td>
                            <td><c:out value="${product.category}"/></td>
                            <td><c:out value="${product.price}"/></td>
                            <td>${product.quantity}</td>
                            <td>${product.unit}</td>
                            <td><c:out value="${product.description}"/></td>
                            <td><c:out value="${product.location}"/></td>
                            <td>
                                <img src="viewproductbyid.jsp?id=${product.id}" alt="Product Image"/>
                            </td>
                           
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.</p>
    </footer>

    <!-- Optional JS for Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9JoHDT+Kdx1mdJXUA0Rs8Fjs3IKR0pGA8LqW4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFwJpAJNNwGXIkEGAUn5he60Qc+" crossorigin="anonymous"></script>
</body>
</html>
