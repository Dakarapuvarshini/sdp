<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmTech</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Navbar styling */
        .navbar {
            background-color: #2ecc71; /* Fresh green color for FarmTech branding */
            padding: 1rem;
        }
        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #FFFFFF !important;
        }
        .navbar-nav .nav-link {
            color: #FFFFFF !important;
        }
        .dropdown-menu {
            background-color: #2ecc71;
        }
        .dropdown-item {
            color: #ffffff;
        }
        .dropdown-item:hover {
            background-color: #27ae60;
            color: #ffffff;
        }

        /* Jumbotron styling */
        .jumbotron {
            color: #fff;
            padding: 3rem 1rem;
            text-align: center;
            margin-top: 2rem;
        }
        .jumbotron h1 {
            font-size: 3rem;
            font-weight: bold;
            color: #FFFFFF;
        }
        .jumbotron p.lead {
            font-size: 1.25rem;
            color: #FFFFFF;
        }
        .btn-custom {
            background-color: #34495e;
            color: #FFFFFF;
            border: none;
            font-weight: bold;
            padding: 0.8rem 2rem;
            border-radius: 30px;
        }

        /* Feature card styling */
        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            border-radius: 10px;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            color: #2ecc71;
            font-weight: bold;
        }

        /* About Us section styling */
        .about-section {
            background-color: #eafaf1;
            padding: 3rem;
            border-radius: 10px;
            margin-top: 2rem;
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar with Dropdown -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">FARM-TECH</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Login's
                    </a>
                    <div class="dropdown-menu" aria-labelledby="loginDropdown">
                        <a class="dropdown-item" href="adminlogin">Admin Login</a>
                        <a class="dropdown-item" href="farmerlogin">Farmer Login</a>
                        
                        <a class="dropdown-item" href="buyer">Buyer Login</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Banner Image -->
    <div class="container-fluid p-0">
        <img src="images/banner.jpg" alt="FarmTech Banner" class="img-fluid w-100">
    </div>

    <!-- Jumbotron Section -->
   

    <!-- About Us Section -->
    <div class="container about-section">
        <h2>About Us</h2>
        <p>Welcome to FarmTech, your trusted partner in agricultural e-commerce. Our platform is dedicated to connecting farmers, gardeners, and food enthusiasts with high-quality produce, ensuring a seamless and transparent marketplace experience.</p>
    </div>

    <!-- Features Section -->
    <div class="container text-center main-content mt-5">
        <h2>Our Features</h2>
        <div class="row mt-4">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Farm Management</h5>
                        <p class="card-text">Easily manage crop data, yield predictions, and farm inventory.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Market Connect</h5>
                        <p class="card-text">Connect farmers with buyers directly for transparent transactions.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Administrative Tools</h5>
                        <p class="card-text">Manage institution-wide settings, policies, and reports.</p>
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
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
