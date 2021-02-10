<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:13
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
<h3>Add Waste</h3>
<form method="POST" name="add_waste"
      action="<%=request.getContextPath()%>/add/waste">
    codeWaste: <input name="codeWaste" value="${codeWaste}" type="number" />
    <br /> <br />
    nameWaste: <input name="nameWaste" value="${nameWaste}" type="text" />
    <br /> <br />
    degreeOfDanger: <input name="degreeOfDanger" value="${degreeOfDanger}" type="text" />
    <br /> <br />
    hazardClass: <input name="hazardClass" value="${hazardClass}" type="text" />
    <br /> <br />
    kindOfActivity: <input name="kindOfActivity" value="${kindOfActivity}" type="text" />
    <br /> <br />
    educationStandard: <input name="educationStandard" value="${educationStandard}" type="text" />
    <br /> <br />
    <input value="Add Waste" type="submit" />
</form>
</body>
</html>
