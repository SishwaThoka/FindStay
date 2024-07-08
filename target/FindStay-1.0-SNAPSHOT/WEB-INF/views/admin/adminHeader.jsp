
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Admin Dashboard - FindStay</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--        }--%>
<%--        header nav {--%>
<%--            margin-bottom: 20px;--%>
<%--            padding: 10px;--%>
<%--            background-color: #f8f8f8;--%>
<%--        }--%>
<%--        header nav a {--%>
<%--            text-decoration: none;--%>
<%--            color: #333;--%>
<%--            padding: 10px 20px;--%>
<%--        }--%>
<%--        header nav a:hover {--%>
<%--            background-color: #ddd;--%>
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
<%--        th {--%>
<%--            background-color: #f4f4f4;--%>
<%--        }--%>
<%--        form {--%>
<%--            display: inline;--%>
<%--        }--%>
<%--        .action-buttons input {--%>
<%--            padding: 5px 10px;--%>
<%--            margin-right: 5px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<header style="margin-left: 20px">--%>
<%--    <nav>--%>
<%--        <a href="/login">Home</a>--%>
<%--        <a href="${pageContext.request.contextPath}/updateFindStayMember/${member.memId}">Edit Profile</a>--%>
<%--        <a href="${pageContext.request.contextPath}/admin/allFindStayMembers">View Members</a>--%>
<%--        <a href="${pageContext.request.contextPath}/properties/all">View Properties</a>--%>
<%--        <a href="${pageContext.request.contextPath}/admin/rentedPropertiesList">View Rented Properties</a>--%>
<%--        <a href="${pageContext.request.contextPath}/logout">Logout</a>--%>
<%--    </nav>--%>
<%--</header>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - FindStay</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #3498db; /* Blue */
            padding: 10px 0;
        }
        header nav {
            display: flex;
            justify-content: center;
        }
        header nav a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        header nav a:hover {
            background-color: #2980b9; /* Darker blue */
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
        th {
            background-color: #f4f4f4;
        }
        form {
            display: inline;
        }
        .action-buttons input {
            padding: 5px 10px;
            margin-right: 5px;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <a href="/login">Home</a>
        <a href="${pageContext.request.contextPath}/updateFindStayMember/${findStayMember.memId}">Edit Profile</a>
        <a href="${pageContext.request.contextPath}/admin/allFindStayMembers">View Members</a>
        <a href="${pageContext.request.contextPath}/properties/all">View Properties</a>
        <a href="${pageContext.request.contextPath}/admin/rentedPropertiesList">View Rented Properties</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </nav>
</header>

</body>
</html>

