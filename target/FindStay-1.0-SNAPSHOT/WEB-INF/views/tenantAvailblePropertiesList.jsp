<%--<%@ include file="tenantheader.jsp" %>--%>
<%--<form action="/properties/searchProperties" method="get">--%>
<%--    <label for="location">Location:</label>--%>
<%--    <input type="text" id="location" name="location">--%>
<%--    <input type="submit" value="Search">--%>
<%--</form>--%>
<%--<h2>Available Properties</h2>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Title</th>--%>
<%--        <th>Price</th>--%>
<%--        <th>House Type</th>--%>
<%--        <th>Location</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Apply</th>--%>
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
<%--                <c:choose>--%>
<%--                    <c:when test="${appliedPropertyIds.contains(property.id)}">--%>
<%--                        <!-- Show applied status -->--%>
<%--                        <button disabled>Applied</button>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <!-- Application submission form -->--%>
<%--                        <form action="/tenant/lease-applications/apply" method="post">--%>
<%--                            <input type="hidden" name="propertyId" value="${property.id}">--%>
<%--                            <input type="hidden" name="tenantId" value="${member.memId}">--%>
<%--                            <input type="text" name="tenantMessage" placeholder="Enter your message">--%>
<%--                            <input type="submit" value="Apply">--%>
<%--                        </form>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%--<c:if test="${not empty successMessage}">--%>
<%--    <div>${successMessage}</div>--%>
<%--</c:if>--%>
<%--<c:if test="${not empty errorMessage}">--%>
<%--    <div>${errorMessage}</div>--%>
<%--</c:if>--%>

<%@ include file="tenantheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search and Apply for Properties</title>
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
        form {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #2c3e50; /* Dark blue */
        }
        input[type="text"],
        input[type="submit"] {
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #3498db; /* Blue */
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #2980b9; /* Darker blue */
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
        button[disabled] {
            background-color: #ccc; /* Grey */
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 8px 12px;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
<div class="container">
    <form action="/properties/searchProperties" method="get">
        <label for="location">Location:</label>
        <input type="text" id="location" name="location">
        <input type="submit" value="Search">
    </form>
    <h2>Available Properties</h2>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Price</th>
            <th>House Type</th>
            <th>Location</th>
            <th>Status</th>
            <th>Apply</th>
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
                <td>
                    <c:choose>
                        <c:when test="${appliedPropertyIds.contains(property.id)}">
                            <!-- Show applied status -->
                            <button disabled>Applied</button>
                        </c:when>
                        <c:otherwise>
                            <!-- Application submission form -->
                            <form action="/tenant/lease-applications/apply" method="post">
                                <input type="hidden" name="propertyId" value="${property.id}">
                                <input type="hidden" name="tenantId" value="${findStayMember.memId}">
                                <input type="text" name="tenantMessage" placeholder="Enter your message">
                                <input type="submit" value="Apply">
                            </form>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <c:if test="${not empty successMessage}">
        <div>${successMessage}</div>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <div>${errorMessage}</div>
    </c:if>
</div>
</body>
</html>
