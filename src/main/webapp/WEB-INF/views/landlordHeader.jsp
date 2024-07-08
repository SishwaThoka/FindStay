<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Landlord Dashboard - FindStay</title>--%>
<%--    <style>--%>
<%--        nav {--%>
<%--            background-color: #f4f4f4;--%>
<%--            padding: 10px 0;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        nav a {--%>
<%--            margin: 0 20px;--%>
<%--            text-decoration: none;--%>
<%--            color: #333;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        nav a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<header>--%>
<%--    <nav>--%>
<%--        <a href="/login">Home</a>--%>
<%--        <a href="/updateLandlordProfile/${member.memId}">Edit Profile</a>--%>
<%--        <a href="/landlord/Leaseapplication/${member.memId}">Review Lease Applications</a>--%>
<%--        <a href="/properties/landlord/${member.memId}">My Properties</a>--%>
<%--        <a href="/logout">Logout</a>--%>
<%--    </nav>--%>
<%--</header>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Landlord Dashboard - FindStay</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #3498db; /* Blue */
            padding: 10px 0;
        }
        nav {
            text-align: center;
        }
        nav a {
            display: inline-block;
            padding: 10px 20px;
            margin: 0 10px;
            text-decoration: none;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        nav a:hover {
            background-color: #2980b9; /* Darker blue */
        }
    </style>
</head>
<body>
<header>
    <nav>
        <a href="/login">Home</a>
        <a href="/updateLandlordProfile/${findStayMember.memId}">Edit Profile</a>
        <a href="/landlord/Leaseapplication/${findStayMember.memId}">Review Lease Applications</a>
        <a href="/properties/landlord/${findStayMember.memId}">My Properties</a>
        <a href="/logout">Logout</a>
    </nav>
</header>
</body>
</html>
