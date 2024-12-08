<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Montserrat', sans-serif;
        }
        .navbar {
            background-color: #388E3C;
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
        .hero-section {
            background-image: linear-gradient(to bottom, #f2f2f2, #ffffff);
            padding: 100px 0;
            text-align: center;
        }
        .products-section {
            padding: 50px 0;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .product-card:hover {
            transform: scale(1.05);
        }
        .product-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
        }
        .product-card .card-body {
            padding: 20px;
        }
        .product-card .card-title {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 10px;
        }
        .product-card .card-text {
            font-size: 14px;
            color: #666;
        }
        .product-card .price {
            font-weight: bold;
            font-size: 18px;
            color: #388E3C;
        }
        .quantity-control {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            gap: 10px;
        }
        .quantity-btn {
            background-color: #388E3C;
            color: #FFFFFF;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .quantity-btn:hover {
            background-color: #34C759;
        }
        .quantity-display {
            margin: 0 10px;
            font-weight: bold;
        }
        .add-to-cart-btn {
            background-color: #388E3C;
            color: #FFFFFF;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .add-to-cart-btn:hover {
            background-color: #34C759;
        }
        
        /* Interactive Unit Display Styles */
        .unit-text {
            font-size: 16px;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #FF9800;  /* Highlight color */
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
            cursor: pointer;
            margin-left: 10px;
        }
        
        .unit-text:hover {
            background-color: #FF5722;  /* Darker hover color */
            transform: scale(1.1);
        }

        footer {
            text-align: center;
            font-size: small;
            color: gray;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="/buyerhome">Buyer Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="buyerhome">Dashboard</a></li>
            <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
            <li class="nav-item"><a class="nav-link" href="wishlist.jsp">Wishlist</a></li>
            <li class="nav-item"><a class="nav-link" href="buyerprofile.jsp">Profile</a></li>
            <li class="nav-item"><a class="nav-link" href="buyerlogin.jsp">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <h1 class="display-4">Fresh Fruits and Vegetables</h1>
    <p class="lead">Get the best quality fruits and vegetables delivered to your doorstep</p>
    <button class="btn btn-success btn-lg">Shop Now</button>
</div>
 <!-- Location Dropdown -->
    <form action="buyerhome" method="GET">
        <label for="location" class="form-label">Select Location:</label>
        <select id="location" name="location" class="form-control" onchange="this.form.submit()">
            <option value="">All Locations</option>
            <c:forEach items="${locations}" var="loc">
                <option value="${loc}" ${loc == selectedLocation ? 'selected' : ''}>${loc}</option>
            </c:forEach>
        </select>
    </form>
<!-- Products Section -->
<div class="products-section">
    <h2 class="mb-4 text-center">Featured Products</h2>
    <div class="container">
        <div class="row">
            <!-- Dynamically Load Products -->
            <c:forEach items="${products}" var="product">
                <div class="col-md-4">
                    <div class="product-card">
                        <img src="viewproductbyid.jsp?id=${product.id}" alt="${product.productName}" class="img-fluid">
                        <div class="card-body">
                            <h5 class="card-title"><c:out value="${product.productName}"/></h5>
                            <p class="card-text"><c:out value="${product.description}"/></p>
                            <p class="price">Rs.<c:out value="${product.price}"/></p>

                            <!-- Interactive Unit -->
                            <span class="unit-text"><c:out value="${product.unit}"/></span>
                            
                            <!-- Quantity Control -->
                            <div class="quantity-control">
                                <button class="quantity-btn" onclick="updateQuantity(${product.id}, -1)">-</button>
                                <span class="quantity-display" id="quantity-${product.id}">1</span>
                                <button class="quantity-btn" onclick="updateQuantity(${product.id}, 1)">+</button>
                            </div>

                            <div class="d-flex justify-content-between">
                                <!-- Add to Cart Button -->
                                <form action="addToCart" method="POST" class="mb-0">
                                    <input type="hidden" name="productId" value="${product.id}">
                                    <input type="hidden" name="quantity" id="hidden-quantity-${product.id}" value="1">
                                    <button type="submit" class="add-to-cart-btn">Add to Cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<footer>
    <p>&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.</p>
</footer>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script>
    // Update Quantity: Increase or Decrease
    function updateQuantity(productId, change) {
        let quantityElement = document.getElementById('quantity-' + productId);
        let currentQuantity = parseInt(quantityElement.innerText);
        let newQuantity = currentQuantity + change;

        // Ensure the quantity doesn't go below 1
        if (newQuantity >= 1) {
            quantityElement.innerText = newQuantity;
            document.getElementById('hidden-quantity-' + productId).value = newQuantity;
        }
    }
</script>
</body>
</html>
