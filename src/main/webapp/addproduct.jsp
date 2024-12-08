<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Registration | FARMTECH</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f4f6f9;
            padding-top: 50px;
        }
        .registration-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 30px;
            max-width: 600px;
            margin: 0 auto;
        }
        .form-label {
            font-weight: 600;
            color: #4CAF50;
        }
        .form-control:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 0 0.2rem rgba(76, 175, 80, 0.25);
        }
    </style>
</head>
<body>
    <%-- Include Navigation Bar --%>
    <%@include file="mainnavbar.jsp" %>

    <div class="container">
        <div class="registration-container">
            <h3 class="text-center mb-4">Product Registration</h3>
            
            <%-- Error Message Handling --%>
            <c:if test="${not empty errorMessage}">
                <div class="alert alert-danger" role="alert">
                    ${errorMessage}
                </div>
            </c:if>

            <form method="post" action="insertproduct" enctype="multipart/form-data" id="productRegistrationForm">
                <div class="mb-3">
                    <label for="pname" class="form-label">Product Name</label>
                    <input type="text" 
                           class="form-control" 
                           id="pname" 
                           name="pname" 
                           placeholder="Enter product name" 
                           required 
                           minlength="3" 
                           maxlength="100"
                           pattern="^[A-Za-z0-9\s]+$"
                           title="Only alphanumeric characters and spaces allowed"/>
                </div>

                <div class="mb-3">
                    <label for="pcategory" class="form-label">Category</label>
                    <select class="form-select" 
                            id="pcategory" 
                            name="pcategory" 
                            required>
                        <option value="" disabled selected>Select Product Category</option>
                        <option value="vegetables">Vegetables</option>
                        <option value="fruits">Fruits</option>
                        <option value="dairy">Dairy</option>
                        <option value="grains">Grains</option>
                        <option value="spices">Spices</option>
                        <option value="beverages">Beverages</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="pprice" class="form-label">Price (₹)</label>
                    <input type="number" 
                           class="form-control" 
                           id="pprice" 
                           name="pprice" 
                           placeholder="Enter product price" 
                           required 
                           min="1" 
                           max="100000"
                           step="0.01"/>
                </div>

                <div class="mb-3">
                    <label for="pquantity" class="form-label">Quantity</label>
                    <div class="input-group">
                        <input type="number" 
                               class="form-control" 
                               id="pquantity" 
                               name="pquantity" 
                               placeholder="Enter quantity" 
                               required 
                               min="1" 
                               max="10000" 
                               step="1"/>
                        <select class="form-select" id="punit" name="punit" required>
                            <option value="" disabled selected>Select Unit</option>
                            <option value="kgs">Kgs</option>
                            <option value="liters">Liters</option>
                            <option value="packets">Packets</option>
                            <option value="pieces">Pieces</option>
                        </select>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="pdescription" class="form-label">Description</label>
                    <textarea 
                        class="form-control" 
                        id="pdescription" 
                        name="pdescription" 
                        placeholder="Describe your product" 
                        required 
                        minlength="10" 
                        maxlength="500"
                        rows="4"></textarea>
                </div>
                <div class="mb-3">
                    <label for="pimage" class="form-label">Product Image</label>
                    <input type="file" 
                           class="form-control" 
                           id="pimage" 
                           name="pimage" 
                           accept="image/*" 
                           required/>
                    <small class="form-text text-muted">
                        Accepted formats: JPEG, PNG (Max 5MB)
                    </small>
                </div>
                <div class="mb-3">
                    <label for="plocation" class="form-label">Location</label>
                    <input type="text" 
                           class="form-control" 
                           id="plocation" 
                           name="plocation" 
                           placeholder="Enter farm/product location" 
                           required 
                           minlength="3" 
                           maxlength="100"/>
                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <button type="reset" class="btn btn-secondary me-md-2">Clear</button>
                    <button type="submit" class="btn btn-success">Register Product</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Optional Client-Side Validation -->
    <script>
        document.getElementById('productRegistrationForm').addEventListener('submit', function(event) {
            const price = document.getElementById('pprice');
            const image = document.getElementById('pimage');

            if (price.value <= 0) {
                alert('Price must be greater than zero');
                event.preventDefault();
            }
            if (image.files[0] && image.files[0].size > 5 * 1024 * 1024) {
                alert('Image size must be less than 5MB');
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
