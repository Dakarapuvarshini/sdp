<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
        body {
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
            font-family: 'Arial', sans-serif;
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

        /* Main Content */
        .content {
            margin-top: 70px; /* Offset for fixed navbar */
            padding: 2rem;
        }

        /* Dashboard Cards */
        .card {
            border: none;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            background-color: #FFFFFF;
            margin-bottom: 1.5rem;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card .card-body {
            text-align: center;
            padding: 1.5rem;
        }

        .card i {
            font-size: 2.5rem;
            color: #388E3C; /* Green */
        }

        .card-title {
            color: #333;
            font-weight: bold;
            margin-top: 15px;
        }

        .card-text {
            color: #888;
        }

        /* Button Style */
        .btn-primary {
            background-color: #388E3C; /* Green */
            border: none;
            color: #FFFFFF;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #2C6B2F; /* Darker Green */
            color: #FFFFFF;
        }

        .navbar .navbar-toggler {
            border: none;
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
            <li class="nav-item"><a class="nav-link" href="adminhome.jsp">Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="addfarmer">Add Farmer</a></li>
            <li class="nav-item"><a class="nav-link" href="viewbuyer">Buyers</a></li>
            <li class="nav-item"><a class="nav-link" href="adminlogin">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content -->
<div class="content">
    <!-- Welcome Message -->
   
    <!-- Dashboard Cards -->
    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-box"></i>
                    <h5 class="card-title mt-3">Products</h5>
                    <p class="card-text text-muted">Manage all products available on the site.</p>
                    <a href="viewproductbyadmin" class="btn btn-primary btn-sm">View Products</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-tags"></i>
                    <h5 class="card-title mt-3">Categories</h5>
                    <p class="card-text text-muted">Organize products into categories.</p>
                    <a href="categories.jsp" class="btn btn-primary btn-sm">View Categories</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-user"></i>
                    <h5 class="card-title mt-3">Farmers</h5>
                    <p class="card-text text-muted">View and manage customer orders.</p>
                    <a href="deletefarmer" class="btn btn-primary btn-sm">View Farmers</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-user"></i>
                    <h5 class="card-title mt-3">Buyers</h5>
                    <p class="card-text text-muted">View and manage registered buyers.</p>
                    <a href="viewbuyer" class="btn btn-primary btn-sm">View Buyers</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-chart-line"></i>
                    <h5 class="card-title mt-3">Manage Farmers</h5>
                    <p class="card-text text-muted">Update</p>
                    <a href="updatefarmer.jsp" class="btn btn-primary btn-sm">Manage Farmers</a>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <i class="fas fa-cogs"></i>
                    <h5 class="card-title mt-3">About</h5>
                    <p class="card-text text-muted">Configure your account and preferences.</p>
                    <a href="about.jsp" class="btn btn-primary btn-sm">View Settings</a>
                </div>
            </div>
        </div>
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
