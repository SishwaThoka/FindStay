<%--<%@ include file="landlordHeader.jsp" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Landlord Properties</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Properties Owned</h2>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Title</th>--%>
<%--        <th>Price</th>--%>
<%--        <th>House Type</th>--%>
<%--        <th>Location</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Actions</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="property" items="${properties}">--%>
<%--        <tr>--%>
<%--            <td>${property.id}</td>--%>
<%--            <td>${property.title}</td>--%>
<%--            <td>${property.price}</td>--%>
<%--            <td>${property.houseType}</td>--%>
<%--            <td>${property.location}</td>--%>
<%--            <td>${property.status}</td>--%>
<%--            <td>--%>
<%--                <a href="/properties/updateProperty/${property.id}">Edit</a>--%>
<%--                <a href="/properties/deleteProperty/${property.id}"--%>
<%--                   onclick="return confirm('Are you sure you want to delete this property?')">Delete</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--<a href="/properties/addProperty">Add Property</a>--%>
<%--</body>--%>
<%--</html>--%>

<%@ include file="landlordHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Landlord Properties</title>
    <style>
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
<h1>Properties Owned</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Price</th>
        <th>House Type</th>
        <th>Location</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="property" items="${properties}">
        <tr>
            <td>${property.id}</td>
            <td>${property.title}</td>
            <td>${property.price}</td>
            <td>${property.houseType}</td>
            <td>${property.location}</td>
            <td>${property.status}</td>
            <td class="action-buttons">
                <a href="/properties/updateProperty/${property.id}">Edit</a>
                <a href="/properties/deleteProperty/${property.id}"
                   onclick="return confirm('Are you sure you want to delete this property?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/properties/addProperty" class="add-link">Add Property</a>
</div>
</body>
</html>
