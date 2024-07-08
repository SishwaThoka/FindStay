<%--<%@ include file="tenantheader.jsp" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Edit Tenant</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f0f6fc; /* Light blue shade */--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 600px;--%>
<%--            margin: 20px auto;--%>
<%--            padding: 20px;--%>
<%--            background-color: #fff;--%>
<%--            border-radius: 8px;--%>
<%--            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        h1 {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 20px;--%>
<%--            color: #2c3e50; /* Dark blue */--%>
<%--        }--%>
<%--        form {--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        input[type="text"],--%>
<%--        input[type="password"] {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            margin-top: 5px;--%>
<%--            margin-bottom: 15px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        input[type="submit"] {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            border: none;--%>
<%--            border-radius: 5px;--%>
<%--            background-color: #3498db; /* Blue */--%>
<%--            color: white;--%>
<%--            font-weight: bold;--%>
<%--            cursor: pointer;--%>
<%--            transition: background-color 0.3s;--%>
<%--        }--%>
<%--        input[type="submit"]:hover {--%>
<%--            background-color: #2980b9; /* Darker blue */--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--<h1>Edit Tenant</h1>--%>
<%--<form action="/updateTenantProfile" method="post">--%>
<%--    <input type="hidden" name="memId" value="${findStayMember.memId}"><br>--%>
<%--    Name:  <input type="text" name="name" value="${findStayMember.name}"><br>--%>
<%--    Username   :  <input type="text" name="username" value="${findStayMember.username}"><br>--%>
<%--    Password: <input type="password" name="password" value="${findStayMember.password}"><br>--%>
<%--    Phone Number: <input type="text" name="phone_number" value="${findStayMember.phone_number}"><br>--%>
<%--    <input type="hidden" name="userType" value="${findStayMember.userType}"><br>--%>
<%--    <input type="submit" value="Update User">--%>
<%--</form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
<%@ include file="tenantheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Tenant</title>
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
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: inline-block;
            width: 120px; /* Adjust as needed */
            margin-right: 10px;
        }
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 130px); /* Adjust for label width */
            padding: 10px;
            margin-top: 5px;
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
<div class="container">
    <h1>Edit Tenant</h1>
    <form action="/updateTenantProfile" method="post">
        <div class="form-group">
            <label>Name:</label>
            <input type="text" name="name" value="${findStayMember.name}">
        </div>
        <div class="form-group">
            <label>Username:</label>
            <input type="text" name="username" value="${findStayMember.username}">
        </div>
        <div class="form-group">
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>
        <div class="form-group">
            <label>Phone Number:</label>
            <input type="text" name="phone_number" value="${findStayMember.phone_number}">
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

        <input type="hidden" name="memId" value="${findStayMember.memId}">
        <input type="hidden" name="userType" value="${findStayMember.userType}">
        <input type="submit" value="Update User">
    </form>
</div>
</body>
</html>
