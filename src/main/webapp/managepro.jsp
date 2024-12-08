<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-danger">Delete Product</h2>
    <div class="alert alert-warning" role="alert">
        <strong>Are you sure you want to delete this product?</strong> This action cannot be undone.
    </div>
    <table class="table table-bordered">
        <thead class="thead-light">
        <tr>
            <th scope="col">Field</th>
            <th scope="col">Details</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">Product ID</th>
            <td>${product.id}</td>
        </tr>
        <tr>
            <th scope="row">Product Name</th>
            <td>${product.productName}</td>
        </tr>
        <tr>
            <th scope="row">Price</th>
            <td>${product.price}</td>
        </tr>
        <tr>
            <th scope="row">Description</th>
            <td>${product.description}</td>
        </tr>
        </tbody>
    </table>
    <form method="post" action="${pageContext.request.contextPath}/product/delete/${product.id}">
        <button type="submit" class="btn btn-danger">Delete</button>
        <a href="${pageContext.request.contextPath}/product/list" class="btn btn-secondary">Cancel</a>
    </form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
