<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Login - BigBasket Style</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f2f2f2;
            color: #333;
            font-family: Arial, sans-serif;
        }

        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f8f8;
            padding: 2rem;
        }

        .login-form {
            background-color: #fff;
            padding: 2.5rem;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
            width: 100%;
            max-width: 400px;
            border-top: 5px solid #5ba829;
        }

        .login-form h2 {
            color: #5ba829;
            text-align: center;
            font-weight: bold;
            margin-bottom: 2rem;
            font-size: 1.8rem;
        }

        .form-control {
            border-radius: 6px;
            border: 1px solid #ccc;
            padding: 1rem;
            font-size: 1rem;
            margin-bottom: 1.5rem;
        }

        .form-control:focus {
            border-color: #5ba829;
            box-shadow: 0 0 8px rgba(91, 168, 41, 0.3);
        }

        .btn-custom {
            background-color: #5ba829;
            color: #fff;
            width: 100%;
            padding: 0.75rem;
            border-radius: 6px;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .btn-custom:hover {
            background-color: #4a8e24;
        }

        .text-center a {
            color: #5ba829;
            font-weight: bold;
            text-decoration: none;
        }

        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<jsp:include page="mainnavbar.jsp" />

<div class="login-container">
    <div class="login-form">
        <h2>Buyer Login</h2>
        <!-- Updated Form Action -->
        <form action="${pageContext.request.contextPath}/checkbuyerLogin" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" id="bemail" name="bemail" placeholder="Enter Email" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="bpwd" name="bpwd" placeholder="Enter Password" required>
            </div>
            <button type="submit" class="btn btn-custom">Login</button>
        </form>
        <div class="text-center mt-3">
            <p>Don't have an account? 
                <a href="buyerreg.jsp">Register</a>
            </p>
        </div>
    </div>
</div>
<footer>
    <p style="text-align: center; font-size: small; color: gray;">
        &copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.
    </p>
</footer>
</body>
</html>
