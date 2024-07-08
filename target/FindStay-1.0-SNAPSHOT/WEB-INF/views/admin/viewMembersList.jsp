<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ include file="adminHeader.jsp" %>--%>
<%--<h1>Members List</h1>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Username</th>--%>
<%--        <th>Phone Number</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Actions</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="findStayMember" items="${findStayMembers}">--%>
<%--        <tr>--%>
<%--            <td>${findStayMember.memId}</td>--%>
<%--            <td>${findStayMember.name}</td>--%>
<%--            <td>${findStayMember.phone_number}</td>--%>
<%--            <td>${findStayMember.name}</td>--%>
<%--            <td>--%>
<%--                <a href="/updateFindStayMember/${findStayMember.memId}">Edit</a>--%>
<%--                <a href="/admin/deleteFindStayMember/${findStayMember.memId}" onclick="return confirm('Are you sure?')">Delete</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--<a href="/admin/add/findStayMember">Add Find Stay Member</a>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Members List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
        td a {
            text-decoration: none;
            color: #3498db; /* Blue */
            margin-right: 10px;
        }
        td a:hover {
            text-decoration: underline;
        }
        .add-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #3498db; /* Blue */
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .add-link:hover {
            background-color: #2980b9; /* Darker blue */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Members List</h1>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Phone Number</th>
            <th>Name</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="findStayMember" items="${findStayMembers}">
            <tr>
                <td>${findStayMember.memId}</td>
                <td>${findStayMember.name}</td>
                <td>${findStayMember.phone_number}</td>
                <td>${findStayMember.name}</td>
                <td>
                    <a href="/updateFindStayMember/${findStayMember.memId}">Edit</a>
                    <a href="/admin/deleteFindStayMember/${findStayMember.memId}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        <c:if test="${not empty message}">
            <div>${message}</div>
        </c:if>
        </tbody>
    </table>
    <a href="/admin/add/findStayMember" class="add-link">Add Find Stay Member</a>
</div>
</body>
</html>
