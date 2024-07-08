<%--&lt;%&ndash;<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html lang="en">&ndash;%&gt;--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <meta charset="UTF-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>Landlord Dashboard</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h1>Welcome Landlord, ${findStayMember.username}!</h1>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h2>Profile Update</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;<form action="/updateProfile" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" name="fullName" value="${findStayMember.name}">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="submit" value="Update Profile">&ndash;%&gt;--%>
<%--&lt;%&ndash;</form>&ndash;%&gt;--%>

<%--&lt;%&ndash;<h2>Review Lease Applications</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;<table border="1">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Application ID</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Property Title</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Tenant Name</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Application Date</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Status</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Tenant Message</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <th>Respond</th>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <c:forEach items="${applications}" var="application">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.id}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.property.title}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.tenant.username}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.applicationDate}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.status}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>${application.tenantMessage}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <form action="/lease-applications/respond/${application.id}" method="post">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input type="text" name="responseMessage" placeholder="Enter response">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <select name="status">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <option value="Accepted">Accept</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <option value="Declined">Decline</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </select>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input type="submit" value="Submit Response">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </form>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;</table>&ndash;%&gt;--%>

<%--&lt;%&ndash;<a href="/findStayMembers/logout">Logout</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Landlord Dashboard</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f0f6fc; /* Light blue shade */--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--        }--%>
<%--        h1, h2 {--%>
<%--            text-align: center;--%>
<%--            color: #2c3e50; /* Dark blue */--%>
<%--        }--%>
<%--        form {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        input[type="text"],--%>
<%--        select {--%>
<%--            padding: 10px;--%>
<%--            margin: 5px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>
<%--        input[type="submit"] {--%>
<%--            padding: 10px 20px;--%>
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
<%--        table {--%>
<%--            width: 100%;--%>
<%--            border-collapse: collapse;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        th, td {--%>
<%--            padding: 8px;--%>
<%--            text-align: left;--%>
<%--            border-bottom: 1px solid #ddd;--%>
<%--        }--%>
<%--        th {--%>
<%--            background-color: #f4f4f4;--%>
<%--        }--%>
<%--        a {--%>
<%--            display: block;--%>
<%--            text-align: center;--%>
<%--            margin-top: 20px;--%>
<%--            text-decoration: none;--%>
<%--            color: #3498db; /* Blue */--%>
<%--        }--%>
<%--        a:hover {--%>
<%--            color: #2980b9; /* Darker blue */--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Welcome Landlord, ${findStayMember.username}!</h1>--%>
<%--<h2>Profile Update</h2>--%>
<%--<form action="/updateProfile" method="post">--%>
<%--    <input type="text" name="fullName" value="${findStayMember.name}" placeholder="Enter Full Name">--%>
<%--    <input type="submit" value="Update Profile">--%>
<%--</form>--%>

<%--<h2>Review Lease Applications</h2>--%>
<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <th>Application ID</th>--%>
<%--        <th>Property Title</th>--%>
<%--        <th>Tenant Name</th>--%>
<%--        <th>Application Date</th>--%>
<%--        <th>Status</th>--%>
<%--        <th>Tenant Message</th>--%>
<%--        <th>Respond</th>--%>
<%--    </tr>--%>
<%--    <c:forEach items="${applications}" var="application">--%>
<%--        <tr>--%>
<%--            <td>${application.id}</td>--%>
<%--            <td>${application.property.title}</td>--%>
<%--            <td>${application.tenant.username}</td>--%>
<%--            <td>${application.applicationDate}</td>--%>
<%--            <td>${application.status}</td>--%>
<%--            <td>${application.tenantMessage}</td>--%>
<%--            <td>--%>
<%--                <form action="/lease-applications/respond/${application.id}" method="post">--%>
<%--                    <input type="text" name="responseMessage" placeholder="Enter response">--%>
<%--                    <select name="status">--%>
<%--                        <option value="Accepted">Accept</option>--%>
<%--                        <option value="Declined">Decline</option>--%>
<%--                    </select>--%>
<%--                    <input type="submit" value="Submit Response">--%>
<%--                </form>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

<%--<a href="/findStayMembers/logout">Logout</a>--%>
<%--</body>--%>
<%--</html>--%>
