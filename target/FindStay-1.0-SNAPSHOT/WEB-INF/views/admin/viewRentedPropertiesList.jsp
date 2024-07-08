<%--<%@ include file="adminHeader.jsp" %>--%>
<%--<head>--%>
<%--<title>Rented Properties List</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Rented Properties List</h1>--%>
<%--<table border="1">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>Property Title</th>--%>
<%--        <th>Tenant Name</th>--%>
<%--        <th>Start Date</th>--%>
<%--        <th>End Date</th>--%>
<%--        <th>Monthly Rent</th>--%>
<%--        <th>Status</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach var="rentedProperty" items="${rentedProperties}">--%>
<%--        <tr>--%>
<%--            <td>${rentedProperty.property.title}</td>--%>
<%--            <td>${rentedProperty.tenant.name}</td>--%>
<%--            <td>${rentedProperty.startDate}</td>--%>
<%--            <td>${rentedProperty.endDate}</td>--%>
<%--            <td>${rentedProperty.monthlyRent}</td>--%>
<%--            <td>${rentedProperty.status}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rented Properties List</title>
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
    </style>
</head>
<body>
<div class="container">
    <h1>Rented Properties List</h1>
    <table>
        <thead>
        <tr>
            <th>Property Title</th>
            <th>Tenant Name</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Monthly Rent</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="rentedProperty" items="${rentedProperties}">
            <tr>
                <td>${rentedProperty.property.title}</td>
                <td>${rentedProperty.tenant.name}</td>
                <td>${rentedProperty.startDate}</td>
                <td>${rentedProperty.endDate}</td>
                <td>${rentedProperty.monthlyRent}</td>
                <td>${rentedProperty.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
