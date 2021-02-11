<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Directory</title>
<body>
<h2>Directory</h2>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<h3>Add Waste</h3>
<form method="POST" name="add_waste"
      action="<%=request.getContextPath()%>/add/waste">
    codeWaste: <input name="codeWaste" pattern="[0-9]{3,}"
                      title="Field must contain at least 3 numbers" class="form-control input-md" required=""
                      type="text" />
    <br /> <br />
    nameWaste: <input name="nameWaste" required="" type="text" />
    <br /> <br />
    degreeOfDanger: <input name="degreeOfDanger"  required="" type="text" />
    <br /> <br />
    hazardClass: <input name="hazardClass" required="" type="text" />
    <br /> <br />
    kindOfActivity: <input name="kindOfActivity"  required="" type="text" />
    <br /> <br />
    educationStandard: <input name="educationStandard" required="" type="text" />
    <br /> <br />
    <input value="Add Waste" type="submit" />
</form>
</body>
</html>
