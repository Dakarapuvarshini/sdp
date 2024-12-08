<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Montserrat', sans-serif;
            padding-top: 60px; /* Reserve space for the fixed navbar */
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
        .quantity-control {
            display: flex;
            align-items: center;
        }
        .quantity-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 0.3rem 0.6rem;
            cursor: pointer;
            font-size: 1rem;
        }
        .quantity-display {
            margin: 0 10px;
            font-size: 1rem;
        }
        .container {
            margin-top: 20px; /* Additional spacing for aesthetics */
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

<div class="container mt-5">
    <c:if test="${empty cart}">
        <p class="text-center">Your cart is empty. <a href="buyerhome">Continue shopping</a>.</p>
    </c:if>

    <c:if test="${not empty cart}">
        <h3 class="mb-4">Your Cart</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="grandTotal" value="0" />
                <c:forEach var="product" items="${cart}">
                    <c:set var="productTotal" value="${product.price * product.quantity}" />
                    <c:set var="grandTotal" value="${grandTotal + productTotal}" />
                    <tr>
                        <td>${product.productName}</td>
                        <td>${product.description}</td>
                        <td>${product.price}</td>
                        <td>
                            <div class="quantity-control">
                                <button class="quantity-btn" onclick="updateQuantity(${product.id}, -1)">-</button>
                                <span class="quantity-display" id="quantity-${product.id}">${product.quantity}</span>
                                <button class="quantity-btn" onclick="updateQuantity(${product.id}, 1)">+</button>
                            </div>
                            <input type="hidden" id="hidden-quantity-${product.id}" name="quantity" value="${product.quantity}">
                        </td>
                        <td class="total-price" id="total-${product.id}">${productTotal}</td>
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

        <div class="d-flex justify-content-between">
            <h4>Total Price:</h4>
            <h4 id="cart-total">${grandTotal}</h4>
        </div>

        <a href="checkout.jsp" class="btn btn-success btn-lg d-block mt-4">Proceed to Checkout</a>
    </c:if>
</div>

<script>
    function updateQuantity(productId, change) {
        let quantityElement = document.getElementById('quantity-' + productId);
        let totalPriceElement = document.getElementById('total-' + productId);
        let currentQuantity = parseInt(quantityElement.innerText);
        let pricePerItem = parseFloat(totalPriceElement.innerText) / currentQuantity;
        let newQuantity = currentQuantity + change;
        if (newQuantity >= 1) {
            quantityElement.innerText = newQuantity;
            totalPriceElement.innerText = (newQuantity * pricePerItem).toFixed(2);
            document.getElementById('hidden-quantity-' + productId).value = newQuantity;
            updateCartTotal();
        }
    }

    function updateCartTotal() {
        let totalPrice = 0;
        let totalElements = document.querySelectorAll('.total-price');
        totalElements.forEach(function (element) {
            totalPrice += parseFloat(element.innerText);
        });
        document.getElementById('cart-total').innerText = totalPrice.toFixed(2);
    }

    window.onload = updateCartTotal;
</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
