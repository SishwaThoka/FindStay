<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="adminHeader.jsp" %>
<h1>Rented Properties List</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Tenant</th>
        <th>Lease Start</th>
        <th>Lease End</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="rentedProperty" items="${rentedProperties}">
        <tr>
            <td>${rentedProperty.id}</td>
            <td>${rentedProperty.property.title}</td>
            <td>${rentedProperty.tenant.name}</td>
            <td>${rentedProperty.leaseStart}</td>
            <td>${rentedProperty.leaseEnd}</td>
            <td>${rentedProperty.status}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
