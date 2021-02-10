<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Spring Boot MVC and Hibernate CRUD Example</title>
<body>
<h2>Spring Boot MVC and Hibernate CRUD Example</h2>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Update User</h3>
<form method="POST" name="update_waste"
      action="<%=request.getContextPath()%>/update/waste">
    <input hidden="hidden" name="id" value="${id}" type="text" />
    codeWaste: <input name="codeWaste" value="${waste.nameWaste}" type="number" />
    <br /> <br />
    nameWaste: <input name="nameWaste" value="${waste.nameWaste}" type="text" />
    <br /> <br />
    degreeOfDanger: <input name="degreeOfDanger" value="${waste.degreeOfDanger}" type="text" />
    <br /> <br />
    hazardClass: <input name="hazardClass" value="${waste.hazardClass}" type="text" />
    <br /> <br />
    kindOfActivity: <input name="kindOfActivity" value="${waste.kindOfActivity}" type="text" />
    <br /> <br />
    educationStandard: <input name="educationStandard" value="${waste.educationStandard}" type="text" />
    <br /> <br />
    <input value="Update Waste" type="submit" />
</form>
</body>
</html>
