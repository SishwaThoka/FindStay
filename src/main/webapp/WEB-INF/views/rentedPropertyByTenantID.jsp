<%--<%@ include file="tenantheader.jsp" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Rented Houses</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Rented Properties List</h2>--%>
<%--<table border="1">--%>
<%--    <tr>--%>

<%--        <th>Title</th>--%>
<%--        <th>Start Date</th>--%>
<%--        <th>End Date</th>--%>
<%--        <th>Monthly Rent</th>--%>
<%--        <th>Location</th>--%>
<%--        <th>Status</th>--%>
<%--    </tr>--%>
<%--    <c:forEach var="rentedProperty" items="${rentedProperties}">--%>
<%--        <tr>--%>
<%--            <td>${rentedProperty.property.title}</td>--%>

<%--            <td>${rentedProperty.startDate}</td>--%>
<%--            <td>${rentedProperty.endDate}</td>--%>
<%--            <td>${rentedProperty.monthlyRent}</td>--%>
<%--            <td>${rentedProperty.property.location}</td>--%>
<%--            <td>${rentedProperty.status}</td>--%>

<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>

<%@ include file="tenantheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Rented Houses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f6fc; /* Light blue shade */
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
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
    <h2>Rented Properties List</h2>
    <table>
        <thead>
        <tr>
            <th>Title</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Monthly Rent</th>
            <th>Location</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="rentedProperty" items="${rentedProperties}">
            <tr>
                <td>${rentedProperty.property.title}</td>
                <td>${rentedProperty.startDate}</td>
                <td>${rentedProperty.endDate}</td>
                <td>${rentedProperty.monthlyRent}</td>
                <td>${rentedProperty.property.location}</td>
                <td>${rentedProperty.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

