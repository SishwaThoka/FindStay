<%--<%@ taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Add Property</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<ci:choose>--%>
<%--    <ci:when test="${sessionScope.member.isAdmin()}">--%>
<%--        <%@ include file="admin/adminHeader.jsp" %>--%>
<%--        <h1>Add Property</h1>--%>
<%--        <form action="/properties/addProperty" method="post">--%>
<%--            <label for="title">Title:</label>--%>
<%--            <input type="text" id="title" name="title" required><br>--%>
<%--            <label for="price">Price:</label>--%>
<%--            <input type="number" id="price" name="price" required><br>--%>
<%--            <label for="houseType">House Type:</label>--%>
<%--            <input type="text" id="houseType" name="houseType" required><br>--%>
<%--            <label for="location">Location:</label>--%>
<%--            <input type="text" id="location" name="location" required><br>--%>
<%--            <label for="status">Status:</label>--%>
<%--            <input type="text" id="status" name="status" required><br>--%>
<%--            <label for="title">LandLord Email:</label>--%>
<%--            <input type="text" id="landlordName" name="landlordName"  required><br>--%>
<%--            <input type="submit" value="Add Property">--%>
<%--        </form>--%>
<%--    </ci:when>--%>
<%--    <ci:otherwise>--%>
<%--        <%@ include file="landlordHeader.jsp" %>--%>
<%--        <h1>Add Property</h1>--%>
<%--        <form action="/properties/addProperty" method="post">--%>
<%--            <label for="title">Title:</label>--%>
<%--            <input type="text" id="title1" name="title" required><br>--%>
<%--            <label for="price">Price:</label>--%>
<%--            <input type="number" id="price1" name="price" required><br>--%>
<%--            <label for="houseType">House Type:</label>--%>
<%--            <input type="text" id="houseType1" name="houseType" required><br>--%>
<%--            <label for="location">Location:</label>--%>
<%--            <input type="text" id="location1" name="location" required><br>--%>
<%--            <label for="status">Status:</label>--%>
<%--            <input type="text" id="status1" name="status" required><br>--%>
<%--            <input type="hidden" name="landlordName" value=${member.username} required><br>--%>
<%--            <input type="submit" value="Add Property">--%>
<%--        </form>--%>
<%--    </ci:otherwise>--%>
<%--</ci:choose>--%>
<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="ci" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Property</title>
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
            margin-top: 20px;
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
    <h1>Add Property</h1>
    <form action="/properties/addProperty" method="post">
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="number" id="price" name="price" required>
        </div>
        <div class="form-group">
            <label for="houseType">House Type:</label>
            <input type="text" id="houseType" name="houseType" required>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>
        </div>
        <div class="form-group">
            <label for="status">Status:</label>
            <input type="text" id="status" name="status" required>
        </div>
        <c:choose>
            <c:when test="${not sessionScope.findStayMember.isAdmin()}">
                <input type="hidden" name="landlordName" value="${findStayMember.username}" required>
            </c:when>
            <c:otherwise>
                <label for="status">Landlord:</label>
                <input type="text" name="landlordName" required>
            </c:otherwise>
        </c:choose>

        <c:if test="${not empty errorMessage}">
            <div style="color: red;">
                <ul>
                    <c:forEach var="error" items="${errorMessage}">
                        <li>${error}</li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <input type="submit" value="Add Property">
    </form>
</div>
</body>
</html>
