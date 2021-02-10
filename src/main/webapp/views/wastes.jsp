<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Spring Boot MVC and Hibernate CRUD Example</title>
<body>
<h2>Spring Boot MVC and Hibernate CRUD Example</h2>
<a href="<%=request.getContextPath()%>/addWaste">Add</a>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<c:choose>
    <c:when test="${wastes != null}">
        <h3>List of Wastes</h3>
        <table cellpadding="5" cellspacing="5">
            <thead>
            <tr>
                <th>ID</th>
                <th>Code Waste</th>
                <th>nameWaste</th>
                <th>degreeOfDanger</th>
                <th>hazardClass</th>
                <th>kindOfActivity</th>
                <th>educationStandard</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="w" items="${wastes}">
                <tr>
                    <td>${w.id}</td>
                    <td>${w.codeWaste}</td>
                    <td>${w.nameWaste}</td>
                    <td>${w.degreeOfDanger}</td>
                    <td>${w.hazardClass}</td>
                    <td>${w.kindOfActivity}</td>
                    <td>${w.educationStandard}</td>
                    <td><a
                            href="<%=request.getContextPath()%>/waste/${w.id}">Details</a>
                        &nbsp;<a
                                href="<%=request.getContextPath()%>/update/waste/${w.id}">Update</a>
                        &nbsp; <a
                                href="<%=request.getContextPath()%>/delete/waste/${w.id}"
                                onclick="return confirm('Do you really want to delete?')">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        No User found in the DB!
    </c:otherwise>
</c:choose>
</body>
</html>

