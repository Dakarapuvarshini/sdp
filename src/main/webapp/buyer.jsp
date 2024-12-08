<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmTech</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background-color: #ffffff;
            display: flex;
            align-items: center;
            padding: 10px 20px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }
        header input[type="text"] {
            width: 60%;
            padding: 8px;
            margin-left: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        header button {
            margin-left: 10px;
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        header button:hover {
            background-color: #45a049;
        }
        nav {
            display: flex;
            justify-content: space-evenly;
            background-color: #e0e0e0;
            padding: 10px 0;
        }
        nav button {
            background-color: #f8f9fa;
            border: 1px solid #ccc;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        nav button:hover {
            background-color: #ddd;
        }
        .banner {
            position: relative;
            width: 100%;
            height: 400px; /* Adjust height for the banner */
            background: url('images/banner.jpg') no-repeat center center;
            background-size: cover;
        }
        .products {
            display: flex;
            justify-content: space-around;
            margin: 20px;
            flex-wrap: wrap;
        }
        .product-card {
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 200px;
            padding: 15px;
            text-align: center;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 10px;
        }
        .product-card img {
            width: 100%; /* Adjust the width of the product images */
            height: auto; /* Maintain the aspect ratio */
            max-height: 150px; /* Limit the max height for consistent sizes */
        }
        .product-card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }
        .product-card button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>FarmTech</h1>
        <input type="text" placeholder="Search for Products...">
        <button>Search</button>
        <a href="buyerlogin.jsp" style="text-decoration: none;">
            <button style="background-color: #28a745; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
                Login / Sign Up
            </button>
        </a>
    </header>
   
    <div class="banner"></div>
    <div class="products">
        <!-- Example products -->
        <div class="product-card">
            <img src="images/carrot.jpg" alt="Carrot">
            <h3>Fresh Carrots</h3>
            <p>Price: ₹40 / kg</p>
          <a href="buyerlogin.jsp" style="text-decoration: none;">
        <button>Add to Basket</button>
    </a>
        </div>
        <div class="product-card">
            <img src="images/okra.jpeg" alt="Tomato">
            <h3>Lady's finger</h3>
            <p>Price: ₹30 / kg</p>
           <a href="buyerlogin.jsp" style="text-decoration: none;">
        <button>Add to Basket</button>
    </a>
        </div>
        <div class="product-card">
            <img src="images/potato.jpg" alt="Potato">
            <h3>Organic Potatoes</h3>
            <p>Price: ₹25 / kg</p>
           <a href="buyerlogin.jsp" style="text-decoration: none;">
        <button>Add to Basket</button>
    </a>
        </div>
        <div class="product-card">
            <img src="images/tomato.jpg" alt="Capsicum">
            <h3>Fresh Tomato</h3>
            <p>Price: ₹60 / kg</p>
            <a href="buyerlogin.jsp" style="text-decoration: none;">
        <button>Add to Basket</button>
    </a>
        </div>
    </div>
    <footer>
    <p style="text-align: center; font-size: small; color: gray;">
        &copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARMTECH. All rights reserved.
    </p>
</footer>
</body>
</html>
