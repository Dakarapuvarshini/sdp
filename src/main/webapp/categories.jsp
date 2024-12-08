<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Categories</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            background-color: #f8f9fa;
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


        .category-container {
            padding-top: 80px;
        }

        .category-card {
            background: white;
            border-radius: 15px;
            transition: transform 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            height: 100%;
        }

        .category-card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: #28a745;
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 15px 15px 0 0;
            font-weight: bold;
        }

        .price {
            font-size: 2.5rem;
            font-weight: bold;
            color: #28a745;
        }

        .features-list {
            list-style: none;
            padding: 0;
        }

        .features-list li {
            padding: 10px;
            border-bottom: 1px solid #eee;
        }

        .product-category {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 10px;
            margin-bottom: 10px;
        }

        .product-title {
            color: #28a745;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-items {
            color: #666;
            font-size: 0.9rem;
        }

        .select-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 30px;
            border-radius: 25px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .select-btn:hover {
            background-color: #218838;
            color: white;
        }

        .best-value {
            position: absolute;
            top: -12px;
            right: 20px;
            background-color: #ffc107;
            color: black;
            padding: 5px 15px;
            border-radius: 15px;
            font-size: 0.8rem;
            font-weight: bold;
        }

        .icon {
            font-size: 1.2rem;
            margin-right: 5px;
            color: #28a745;
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
    <!-- Categories Section -->
    <div class="category-container">
        <div class="container">
            <!-- Messages -->
            <c:if test="${not empty message}">
                <div class="alert alert-success text-center" role="alert">
                    ${message}
                </div>
            </c:if>
            <c:if test="${not empty error}">
                <div class="alert alert-danger text-center" role="alert">
                    ${error}
                </div>
            </c:if>

            <h2 class="text-center mb-5">Choose Your Product Category</h2>
            
            <div class="row">
                <!-- Daily Products -->
                <div class="col-lg-4 mb-4">
                    <div class="category-card">
                        <div class="card-header">
                            <h3>Daily Products</h3>
                        </div>
                        <div class="card-body text-center">
                          
                            
                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-milk-carton icon"></i>Dairy Products
                                </div>
                                <div class="product-items">
                                    Fresh Milk, Curd, Butter, Paneer, Ghee
                                </div>
                            </div>

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-bread-slice icon"></i>Fresh Bakery
                                </div>
                                <div class="product-items">
                                    Bread, Eggs, Fresh Cream
                                </div>
                            </div>

                            <ul class="features-list mt-3">
                                <li>24-hour listing visibility</li>
                                <li>Daily price updates</li>
                                <li>Direct customer orders</li>
                                <li>Same-day delivery option</li>
                            </ul>

                            <form action="selectPlan" method="POST">
                                <input type="hidden" name="planType" value="daily">
                                <input type="hidden" name="amount" value="99">
                                
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Weekly Products -->
                <div class="col-lg-4 mb-4">
                    <div class="category-card position-relative">
                        <div class="best-value">MOST POPULAR</div>
                        <div class="card-header">
                            <h3>Weekly Products</h3>
                        </div>
                        <div class="card-body text-center">
                          

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-egg icon"></i>Poultry Products
                                </div>
                                <div class="product-items">
                                    Eggs, Chicken, Duck Eggs
                                </div>
                            </div>

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-drumstick-bite icon"></i>Meat Products
                                </div>
                                <div class="product-items">
                                    Chicken, Mutton, Fish, Seafood
                                </div>
                            </div>

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-cheese icon"></i>Dairy Bulk
                                </div>
                                <div class="product-items">
                                    Cheese, Butter, Bulk Milk Supply
                                </div>
                            </div>

                            <ul class="features-list mt-3">
                                <li>7-day listing visibility</li>
                                <li>Bulk order management</li>
                                <li>Weekly price analytics</li>
                                <li>Priority customer support</li>
                            </ul>

                            <form action="selectPlan" method="POST">
                                <input type="hidden" name="planType" value="weekly">
                                <input type="hidden" name="amount" value="499">
                               
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Monthly Products -->
                <div class="col-lg-4 mb-4">
                    <div class="category-card">
                        <div class="card-header">
                            <h3>Monthly Products</h3>
                        </div>
                        <div class="card-body text-center">
                          
                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-apple-alt icon"></i>Fruits
                                </div>
                                <div class="product-items">
                                    Seasonal Fruits, Exotic Fruits, Organic Fruits
                                </div>
                            </div>

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-carrot icon"></i>Vegetables
                                </div>
                                <div class="product-items">
                                    Seasonal Vegetables, Organic Vegetables
                                </div>
                            </div>

                            <div class="product-category">
                                <div class="product-title">
                                    <i class="fas fa-seedling icon"></i>Grains & Pulses
                                </div>
                                <div class="product-items">
                                    Rice, Wheat, Pulses, Organic Grains
                                </div>
                            </div>

                            <ul class="features-list mt-3">
                                <li>30-day listing visibility</li>
                                <li>Seasonal crop planning</li>
                                <li>Market trend analysis</li>
                                <li>Bulk buyer connection</li>
                                <li>Export opportunities</li>
                            </ul>

                            <form action="selectPlan" method="POST">
                                <input type="hidden" name="planType" value="monthly">
                                <input type="hidden" name="amount" value="1499">
                               
                            </form>
                        </div>
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
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    <!-- Confirmation Dialog -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const forms = document.querySelectorAll('form');
            forms.forEach(form => {
                form.addEventListener('submit', function(e) {
                    e.preventDefault();
                    const planType = this.querySelector('input[name="planType"]').value;
                    const amount = this.querySelector('input[name="amount"]').value;
                    if(confirm(`Are you sure you want to select the ${planType} plan for ₹${amount}?`)) {
                        this.submit();
                    }
                });
            });
        });
    </script>
</body>
</html>