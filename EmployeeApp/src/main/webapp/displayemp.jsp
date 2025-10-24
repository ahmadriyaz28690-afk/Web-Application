<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #00b09b, #96c93d);
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        min-height: 100vh;
        color: #333;
    }

    h3 {
        margin-top: 60px;
        color: #fff;
        background: rgba(0, 0, 0, 0.2);
        padding: 15px 30px;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
        font-size: 1.5rem;
        text-align: center;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        max-width: 800px;
        margin-top: 30px;
        background-color: #fff;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    th {
        background-color: #00b09b;
        color: white;
        text-transform: uppercase;
        padding: 12px 15px;
        letter-spacing: 0.5px;
    }

    td {
        padding: 12px 15px;
        text-align: center;
        color: #333;
        border-bottom: 1px solid #eee;
    }

    tr:last-child td {
        border-bottom: none;
    }

    tr:hover {
        background-color: #f3f3f3;
    }

    .footer {
        margin-top: auto;
        padding: 15px;
        color: white;
        font-size: 0.9rem;
        opacity: 0.8;
    }
</style>
</head>
<body>

    <h3>Welcome to the Employee Dashboard, <span style="color:#ffeb3b;">${employees1.name}</span>!</h3>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Gender</th>
            <th>City</th>
        </tr>
        <tr>
            <td>${employees1.id}</td>
            <td>${employees1.name}</td>
            <td>${employees1.email}</td>
            <td>${employees1.password}</td>
            <td>${employees1.gender}</td>
            <td>${employees1.city}</td>
        </tr>
    </table>

    <div class="footer">
        © 2025 Employee Management Portal | All Rights Reserved
    </div>

</body>
</html>
