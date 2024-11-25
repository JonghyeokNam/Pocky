<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soccer</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #f8f9fa;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
            color: red;
        }
        .nav-links a {
            margin: 0 10px;
            text-decoration: none;
            color: #000;
        }
        .icon {
            margin-right: 10px;
        }
        .list-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #e9ecef;
        }
        .list-item .icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 30px;
            height: 30px;
            background-color: #e0c6ff;
            color: white;
            border-radius: 50%;
            font-weight: bold;
        }
        .pagination {
            justify-content: center;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="logo">Pocky</div>
        <div class="nav-links">
            <a href="#">Products</a>
            <a href="#">Solutions</a>
            <a href="#">Community</a>
            <a href="#">Resources</a>
            <a href="#">Pricing</a>
            <a href="#">Contact</a>
        </div>
        <div>
            <button class="btn btn-outline-primary">Sign in</button>
            <button class="btn btn-primary">Register</button>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container mt-4">
        <div class="text-center">
            <h1>
                <span class="icon">⚽</span> Soccer
            </h1>
        </div>

        <!-- List Items -->
        <div class="mt-4">
            <% for (int i = 1; i <= 10; i++) { %>
                <div class="list-item">
                    <div>
                        <span class="icon">A</span> List Item
                    </div>
                    <div>10+</div>
                </div>
            <% } %>
        </div>

        <!-- Pagination -->
        <nav>
            <ul class="pagination mt-4">
                <li class="page-item">
                    <a class="page-link" href="#">Previous</a>
                </li>
                <% for (int i = 1; i <= 10; i++) { %>
                    <li class="page-item <%= (i == 1) ? "active" : "" %>">
                        <a class="page-link" href="#"><%= i %></a>
                    </li>
                <% } %>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
