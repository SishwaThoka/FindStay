<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Find Stay Member Registration</title>--%>

<%--</head>--%>
<%--<body>--%>
<%--<h1>Find Stay Member Registration</h1>--%>
<%--<form action="/register" method="post">--%>
<%--    <label for="username">Username:</label>--%>
<%--    <input type="text" id="username" name="username" required><br>--%>
<%--    <label for="password">Password:</label>--%>
<%--    <input type="password" id="password" name="password" required><br>--%>
<%--    <label for="name">Name:</label>--%>
<%--    <input type="text" id="name" name="name" required><br>--%>
<%--    <label for="phone_number">Phone Number:</label>--%>
<%--    <input type="text" id="phone_number" name="phone_number" required><br>--%>
<%--    <label for="userType">User Type:</label>--%>
<%--    <select id="userType" name="userType">--%>
<%--        <option value="Tenant">Tenant</option>--%>
<%--        <option value="Landlord">Landlord</option>--%>
<%--    </select><br>--%>
<%--    <button type="submit">Register</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find Stay Member Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 40px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #2c3e50; /* Dark blue */
            margin-bottom: 20px;
        }
        form {
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #333; /* Dark grey */
        }
        input[type="text"],
        input[type="password"],
        input[type="number"],
        select {
            width: calc(100% - 10px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        button[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #3498db; /* Blue */
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue */
        }
        a {
            display: block;
            margin-top: 10px;
            color: #3498db; /* Blue */
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Find Stay Member Registration</h1>
    <form action="/register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="phone_number">Phone Number:</label>
        <input type="text" id="phone_number" name="phone_number" required><br>
        <label for="userType">User Type:</label>
        <select id="userType" name="userType">
            <option value="Tenant">Tenant</option>
            <option value="Landlord">Landlord</option>
        </select><br>
<%--        <c:if test="${not empty message}">--%>
<%--            <div>${message}</div>--%>
<%--        </c:if>--%>
        <c:if test="${not empty errorMessage}">
            <div style="color: red;">
                <ul>
                    <c:forEach var="error" items="${errorMessage}">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <button type="submit">Register</button>
    </form>
    <a href="/login">Already have an account? Login here</a>
</div>
</body>
</html>
