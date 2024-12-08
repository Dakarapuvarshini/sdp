<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Farmer E-Commerce</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        .about-section {
            background-color: #ffffff;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .about-section h2 {
            color: #4CAF50;
            font-size: 36px;
            margin-bottom: 20px;
        }
        .about-section p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
        }
        .team {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 40px;
        }
        .team-member {
            background-color: #ffffff;
            flex: 1;
            min-width: 280px;
            text-align: center;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .team-member img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-bottom: 15px;
        }
        .team-member h3 {
            color: #333;
            font-size: 22px;
            margin-bottom: 10px;
        }
        .team-member p {
            font-size: 16px;
            color: #777;
        }
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            margin-top: 40px;
        }
        .footer a {
            color: #4CAF50;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome to Farmer E-Commerce</h1>
        <p>Connecting Farmers, Buyers, and Communities!</p>
    </div>
    <div class="container">
        <div class="about-section">
            <h2>About Us</h2>
            <p>
                At Farmer E-Commerce, we aim to bridge the gap between farmers and buyers. 
                Our platform is designed to empower farmers by providing a direct channel to sell their produce while ensuring buyers get fresh, quality products. 
                We believe in creating a sustainable ecosystem that supports local farmers and builds trust in communities.
            </p>
            <p>
                Our vision is to revolutionize the agricultural market by integrating technology and innovation, creating a fair and transparent marketplace. 
                Together, we are fostering a culture of growth, collaboration, and mutual benefit.
            </p>
        </div>
        <div class="team">
            <div class="team-member">
                <img src="images/founder.jpg" alt="Founder">
                <h3>John Doe</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="images/admin.jpg" alt="Admin">
                <h3>Jane Smith</h3>
                <p>Head of Operations</p>
            </div>
            <div class="team-member">
                <img src="images/tech.jpg" alt="Tech">
                <h3>Michael Brown</h3>
                <p>Lead Developer</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2024 Farmer E-Commerce. All Rights Reserved. <a href="contact.jsp">Contact Us</a></p>
    </div>
</body>
</html>
