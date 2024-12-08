<!DOCTYPE html>
<html>
<head>
    <title>Location Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Location Details</h1>
    <table>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Address</td>
            <td>${location.address}</td>
        </tr>
        <tr>
            <td>Latitude</td>
            <td>${location.latitude}</td>
        </tr>
        <tr>
            <td>Longitude</td>
            <td>${location.longitude}</td>
        </tr>
    </table>
</body>
</html>
