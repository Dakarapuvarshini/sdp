<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Buyer Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            background-color: #28a745;
            color: #fff;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #155724;
            color: #FFFFFF;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 10;
        }
        
        .navbar .nav-link {
            color: #FFFFFF !important;
        }

        .content {
            margin-top: 80px;
            padding: 2rem;
        }

        .form-container {
            background-color: #ffffff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }

        .form-container h1 {
            color: #28a745;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .form-control {
            border-radius: 4px;
            border: 1px solid #ddd;
            margin-bottom: 1rem;
        }

        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 8px rgba(40, 167, 69, 0.3);
        }

        .btn-custom {
            background-color: #28a745;
            color: #fff;
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            font-size: 1.1rem;
        }

        .btn-custom:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">FARM-TECH</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    
</nav>

<div class="content">
    <div class="form-container">
        <h1>Buyer Registration</h1>
        <form action="insertbuyer" method="POST">

            <div class="form-group">
                <label for="id">Buyer ID</label>
                <input type="number" class="form-control" id="id" name="id" placeholder="Enter Buyer ID" required>
            </div>

            <div class="form-group">
                <label for="name">Buyer Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Buyer Name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email Address" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
            </div>

            <div class="form-group">
                <label for="contactno">Contact Number</label>
                <input type="text" class="form-control" id="contactno" name="contactno" placeholder="Enter Contact Number" required>
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" class="form-control" id="location" name="location" placeholder="Enter Location" required>
            </div>

            <button type="submit" class="btn btn-custom">Register</button>
        </form>
    </div>
</div>
<footer>
    <p style="text-align: center; font-size: small; color: gray;">
        &copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.
    </p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>