<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product | FARMTECH</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f4f6f9;
            padding-top: 50px;
        }
        .update-container {
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
    <!-- Include Navigation Bar -->
    <%@ include file="mainnavbar.jsp" %>

    <div class="container">
        <div class="update-container">
            <h3 class="text-center mb-4">Update Product</h3>
            
            <!-- Success/Error Message Handling -->
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success" role="alert">
                    ${successMessage}
                </div>
            </c:if>

            <form method="POST" action="${pageContext.request.contextPath}/updatepro">
                <!-- Hidden Product ID -->
                <input type="hidden" name="pid" value="${product.id}" />

                <!-- Product Price -->
                <div class="mb-3">
                    <label for="pprice" class="form-label">Price (₹)</label>
                    <input type="number" name="pprice" class="form-control" id="pprice" 
                           value="${product.price}" placeholder="Enter updated price" required min="1" step="0.01" />
                </div>

                <!-- Product Quantity -->
                <div class="mb-3">
                    <label for="pquantity" class="form-label">Quantity</label>
                    <input type="number" name="pquantity" class="form-control" id="pquantity" 
                           value="${product.quantity}" placeholder="Enter updated quantity" required min="1" />
                </div>

                <!-- Product Unit -->
                <div class="mb-3">
                    <label for="punit" class="form-label">Unit</label>
                    <input type="text" name="punit" class="form-control" id="punit" 
                           value="${product.unit}" placeholder="Enter unit (e.g., kg, liter)" required />
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-success">Update</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
