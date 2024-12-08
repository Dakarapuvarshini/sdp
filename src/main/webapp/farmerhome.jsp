<!-- Farmer Portal Homepage -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FARM-TECH</title>

    <!-- Bootstrap 5 CSS (CDN) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* General Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f8f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #4CAF50;
            padding: 15px 20px;
            border-bottom: 2px solid #ddd;
        }

        .navbar .navbar-brand {
            font-size: 2rem;
            font-weight: bold;
            color: white;
        }

        .navbar-nav .nav-link {
            font-size: 1.1rem;
            color: white;
            margin-left: 15px;
            transition: color 0.3s;
        }

        .navbar-nav .nav-link:hover {
            color: #ddd;
        }

        /* Header Section Styling */
        .home-header {
            text-align: center;
            padding: 50px 20px;
            background-color: #4CAF50;
            color: white;
            border-radius: 0 0 20px 20px;
        }

        .home-header h1 {
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .home-header p {
            font-size: 1.2rem;
        }

        /* Task Section Styling */
        .task-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin: 30px auto;
            padding: 0 20px;
        }

        .task-box {
            background: white;
            border: 1px solid #ddd;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .task-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
        }

        .task-box h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: #4CAF50;
        }

        .task-box p {
            font-size: 1rem;
            margin-bottom: 20px;
            color: #555;
        }

        .btn-custom {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn-custom:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        /* Footer Styling */
        footer {
            text-align: center;
            padding: 20px 10px;
            background-color: #4CAF50;
            color: white;
            font-size: 0.9rem;
            margin-top: 40px;
            border-radius: 20px 20px 0 0;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="/home">FARM-TECH</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="farmerhome">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addproduct">Add Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewproducts">View Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="farmerprofile">profile</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="farmerlogin">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="home-header">
        <h1>Welcome, Farmer!</h1>
        <p>Your portal to manage products and view feedback from buyers.</p>
    </div>

    <!-- Task Section -->
    <div class="task-container">
        <div class="task-box">
            <h3>Add Product</h3>
            <p>Add new products to your list for sale.</p>
            <a href="addproduct" class="btn btn-custom">Add Product</a>
        </div>
        <div class="task-box">
            <h3>Manage Products</h3>
            <p>Update or delete existing products.</p>
            <a href="viewproducts" class="btn btn-custom">View Products</a>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; <%= java.util.Calendar.getInstance().get(java.util.Calendar.YEAR) %> FARM-TECH. All rights reserved.</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
