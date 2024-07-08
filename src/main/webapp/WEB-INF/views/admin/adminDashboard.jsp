<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Welcome</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        h1 {--%>
<%--            margin-top: 50px; /* Adjust as needed */--%>
<%--        }--%>
<%--        p {--%>
<%--            margin-bottom: 20px; /* Adjust as needed */--%>
<%--        }--%>
<%--        a {--%>
<%--            display: block;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        table {--%>
<%--            width: 100%;--%>
<%--            border-collapse: collapse;--%>
<%--        }--%>

<%--        th, td {--%>
<%--            padding: 8px;--%>
<%--            text-align: left;--%>
<%--            border-bottom: 1px solid #ddd;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<%@ include file="adminHeader.jsp" %>--%>
<%--<body>--%>
<%--<h1>Welcome, ${member.username}!</h1>--%>
<%--<p>You are now logged in.</p>--%>
<%--</body>--%>
<%--</html>--%>


<%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 50px 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-top: 0;
            color: #2c3e50; /* Dark blue */
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50; /* Dark blue */
        }

        p {
            margin-bottom: 20px;
            color: #555;
        }

        a {
            display: inline-block;
            margin-bottom: 10px;
            color: #3498db; /* Blue */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        /* Header Styling */
        .header {
            background-color: #3498db; /* Blue */
            color: #fff;
            padding: 20px 0;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }

        .header h2 {
            margin: 0;
        }
    </style>
</head>
<body>
<div class="header">
    <h2>Welcome, ${findStayMember.username}!</h2>
</div>
<div class="container">
    <h2>Your Profile</h2>
    <form action="/updateProfile" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" value="${findStayMember.username}" readonly><br>

        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" value="${findStayMember.name}" readonly><br>

        <label for="phone_number">Phone Number:</label><br>
        <input type="text" id="phone_number" name="phone_number" value="${findStayMember.phone_number}" readonly><br>
    </form>
</div>
</body>
</html>
