<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Add User</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f0f6fc; /* Light blue shade */--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 600px;--%>
<%--            margin: 20px auto;--%>
<%--            padding: 20px;--%>
<%--            background-color: #fff;--%>
<%--            border-radius: 8px;--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        h1 {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 20px;--%>
<%--            color: #2c3e50; /* Dark blue */--%>
<%--        }--%>
<%--        form {--%>
<%--            text-align: left;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        .form-group {--%>
<%--            margin-bottom: 15px;--%>
<%--        }--%>
<%--        .form-group label {--%>
<%--            display: block;--%>
<%--            margin-bottom: 5px;--%>
<%--        }--%>
<%--        input[type="text"],--%>
<%--        input[type="number"] {--%>
<%--            width: calc(100% - 10px);--%>
<%--            padding: 10px;--%>
<%--            margin-bottom: 15px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        input[type="submit"] {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            border: none;--%>
<%--            border-radius: 5px;--%>
<%--            background-color: #3498db; /* Blue */--%>
<%--            color: white;--%>
<%--            font-weight: bold;--%>
<%--            cursor: pointer;--%>
<%--            transition: background-color 0.3s;--%>
<%--        }--%>
<%--        input[type="submit"]:hover {--%>
<%--            background-color: #2980b9; /* Darker blue */--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Add User</h1>--%>
<%--<form action="/admin/add/findStayMember" method="post">--%>
<%--    Username: <input type="text" name="username"><br>--%>
<%--    Password: <input type="password" name="password"><br>--%>
<%--    Phone Number: <input type="text" name="phone_number"><br>--%>
<%--    Name: <input type="text" name="name"><br>--%>
<%--    <input type="submit" value="Add User">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>
<%@ include file="adminHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50; /* Dark blue */
        }
        form {
            text-align: left;
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="password"],
        input[type="number"] {
            width: calc(100% - 10px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
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
        input[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Add User</h1>
    <form action="/admin/add/findStayMember" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
        </div>
        <div class="form-group">
            <label for="phone_number">Phone Number:</label>
            <input type="text" id="phone_number" name="phone_number">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div class="form-group">
        <label for="userType">User Type:</label>
        <select id="userType" name="userType">
            <option value="Tenant">Tenant</option>
            <option value="Landlord">Landlord</option>
        </select><br>
        </div>
        <c:if test="${not empty errorMessage}">
            <div style="color: red;">
                <ul>
                    <c:forEach var="error" items="${errorMessage}">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <input type="submit" value="Add User">
    </form>
</div>
</body>
</html>
