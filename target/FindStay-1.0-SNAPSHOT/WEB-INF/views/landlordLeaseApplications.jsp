<%--<%@ include file="landlordHeader.jsp" %>--%>

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
<%--    <c:forEach items="${leaseApplications}" var="application">--%>
<%--        <tr>--%>
<%--            <td>${application.id}</td>--%>
<%--            <td>${application.property.title}</td>--%>
<%--            <td>${application.tenant.username}</td>--%>
<%--            <td>${application.applicationDate}</td>--%>
<%--            <td>${application.status}</td>--%>
<%--            <td>${application.tenantMessage}</td>--%>
<%--            <td>--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${application.status eq 'Pending'}">--%>
<%--                        <form action="/landlord/lease-applications/respond/${application.id}" method="post">--%>
<%--                            <input type="text" name="responseMessage" placeholder="Enter response">--%>
<%--                            <select name="status">--%>
<%--                                <option value="Accepted">Accept</option>--%>
<%--                                <option value="Declined">Decline</option>--%>
<%--                            </select>--%>
<%--                            <input type="submit" value="Submit Response">--%>
<%--                        </form>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        Response submitted--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

<%--<c:if test="${not empty successMessage}">--%>
<%--    <div>${successMessage}</div>--%>
<%--</c:if>--%>
<%--<c:if test="${not empty errorMessage}">--%>
<%--    <div>${errorMessage}</div>--%>
<%--</c:if>--%>

<%@ include file="landlordHeader.jsp" %>
<style>
    /* Your CSS styles here */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
        color: #333;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f2f2f2;
    }
    .container {
        max-width: 900px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
</style>
<div class="container">
<h2>Review Lease Applications</h2>
<table border="1">
    <thead>
    <tr>
        <th>Application ID</th>
        <th>Property Title</th>
        <th>Tenant Name</th>
        <th>Application Date</th>
        <th>Status</th>
        <th>Tenant Message</th>
        <th>Respond</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${leaseApplications}" var="application">
        <tr>
            <td>${application.id}</td>
            <td>${application.property.title}</td>
            <td>${application.tenant.username}</td>
            <td>${application.applicationDate}</td>
            <td>${application.status}</td>
            <td>${application.tenantMessage}</td>
            <td>
                <c:choose>
                    <c:when test="${application.status eq 'Pending'}">
                        <form action="/landlord/lease-applications/respond/${application.id}" method="post">
                            <input type="text" name="responseMessage" placeholder="Enter response">
                            <select name="status">
                                <option value="Accepted">Accept</option>
                                <option value="Declined">Decline</option>
                            </select>
                            <input type="submit" value="Submit Response">
                        </form>
                    </c:when>
                    <c:otherwise>
                        Response submitted
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


