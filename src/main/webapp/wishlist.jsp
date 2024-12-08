<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <style>
        body {
            font-family: 'Montserrat', sans-serif;
            padding-top: 70px; /* Adds a gap to account for the fixed navbar */
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
    </style>
</head>
<body>
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


<div class="container mt-5">
    <h2 class="mb-4">Shopping Cart</h2>
    <c:if test="${empty cart}">
        <p class="text-center">Your cart is empty. <a href="buyerhome">Continue shopping</a>.</p>
    </c:if>
    <c:if test="${not empty cart}">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${cart}">
                    <tr>
                        <td>${product.productName}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>
                            <form action="removeFromCart" method="post" style="display: inline;">
                                <input type="hidden" name="productId" value="${product.id}">
                                <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="text-right">
            <a href="checkout.jsp" class="btn btn-success">Proceed to Checkout</a>
        </div>
    </c:if>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
