<%--<%@ taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Edit Property</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<ci:choose>--%>
<%--    <ci:when test="${sessionScope.member.isAdmin()}">--%>
<%--        <%@ include file="admin/adminHeader.jsp" %>--%>
<%--    </ci:when>--%>
<%--    <ci:otherwise>--%>
<%--        <%@ include file="landlordHeader.jsp" %>--%>
<%--    </ci:otherwise>--%>
<%--</ci:choose>--%>
<%--<h1>Edit Property</h1>--%>
<%--<form action="/properties/updateProperty" method="post">--%>
<%--    <input type="hidden" name="id" value="${property.id}">--%>
<%--    <label for="title">Title:</label>--%>
<%--    <input type="text" id="title" name="title" value="${property.title}" required><br>--%>
<%--    <label for="price">Price:</label>--%>
<%--    <input type="number" id="price" name="price" value="${property.price}" required><br>--%>
<%--    <label for="houseType">House Type:</label>--%>
<%--    <input type="text" id="houseType" name="houseType" value="${property.houseType}" required><br>--%>
<%--    <label for="location">Location:</label>--%>
<%--    <input type="text" id="location" name="location" value="${property.location}" required><br>--%>
<%--    <label for="status">Status:</label>--%>
<%--    <input type="text" id="status" name="status" value="${property.status}" required><br>--%>

<%--    <input type="submit" value="Update Property">--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Property</title>
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
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
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
    <ci:choose>
        <ci:when test="${sessionScope.findStayMember.isAdmin()}">
            <%@ include file="admin/adminHeader.jsp" %>
        </ci:when>
        <ci:otherwise>
            <%@ include file="landlordHeader.jsp" %>
        </ci:otherwise>
    </ci:choose>
    <div class="container">
    <h1>Edit Property</h1>
    <form action="/properties/updateProperty" method="post">
        <input type="hidden" name="id" value="${property.id}">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="${property.title}" required>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="${property.price}" required>
        </div>
        <div class="form-group">
            <label for="houseType">House Type:</label>
            <input type="text" id="houseType" name="houseType" value="${property.houseType}" required>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" value="${property.location}" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <input type="text" id="status" name="status" value="${property.status}" required>
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
        <input type="submit" value="Update Property">
    </form>
</div>
</body>
</html>
