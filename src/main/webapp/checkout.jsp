<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="buyerhome">Buyer Dashboard</a>
</nav>

<div class="container mt-5">
    <h2 class="mb-4">Checkout</h2>
    <h4>Order Summary</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${cart}">
                <tr>
                    <td>${product.productName}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>${product.price * product.quantity}</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="3" class="text-right"><strong>Grand Total:</strong></td>
                <td><strong>${sessionScope.grandTotal}</strong></td>
            </tr>
        </tbody>
    </table>

    <h4>Shipping Address</h4>
    <form action="placeOrder" method="post">
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea name="address" id="address" class="form-control" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="city">City:</label>
            <input type="text" name="city" id="city" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="zipcode">Zip Code:</label>
            <input type="text" name="zipcode" id="zipcode" class="form-control" required>
        </div>
        <div class="text-right">
            <button type="submit" class="btn btn-success">Place Order</button>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">

HttpSession session = request.getSession();
List<Product> cart = (List<Product>) session.getAttribute("cart");

if (cart != null) {
    double grandTotal = 0;
    for (Product product : cart) {
        grandTotal += product.getPrice() * product.getQuantity();
    }
    session.setAttribute("grandTotal", grandTotal); // Add grandTotal to session
}
request.getRequestDispatcher("checkout.jsp").forward(request, response);


</script>
</body>
</html>
