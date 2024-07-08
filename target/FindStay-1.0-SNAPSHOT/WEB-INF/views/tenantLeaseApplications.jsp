<%--<%@ include file="tenantheader.jsp" %>--%>

<%--<h2>Your Lease Applications</h2>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Property Title</th>--%>
<%--        <th>Application Date</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Your Message</th>--%>
<%--        <th>Response Message</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <c:forEach items="${leaseApplications}" var="app">--%>
<%--        <tr>--%>
<%--            <td>${app.id}</td>--%>
<%--            <td>${app.property.title}</td>--%>
<%--            <td>${app.applicationDate}</td>--%>
<%--            <td>${app.status}</td>--%>
<%--            <td>${app.tenantMessage}</td>--%>
<%--            <td>${app.landlordResponseMessage}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%@ include file="tenantheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Lease Applications</title>
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
    <h2>Your Lease Applications</h2>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Property Title</th>
            <th>Application Date</th>
            <th>Status</th>
            <th>Your Message</th>
            <th>Response Message</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${leaseApplications}" var="app">
            <tr>
                <td>${app.id}</td>
                <td>${app.property.title}</td>
                <td>${app.applicationDate}</td>
                <td>${app.status}</td>
                <td>${app.tenantMessage}</td>
                <td>${app.landlordResponseMessage}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
