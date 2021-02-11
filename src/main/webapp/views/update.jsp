<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:18
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
<h3>Update User</h3>
<form method="POST" name="update_waste"
      action="<%=request.getContextPath()%>/update/waste">
    <input hidden="hidden" name="id" value="${id}" type="text" />
    codeWaste: <input name="codeWaste" pattern="[0-9]{3,}"
                      title="Field must contain at least 3 numbers" class="form-control input-md" required=""
                      value="" type="text" value="${waste.codeWaste}" type="text" />
    <br /> <br />
    nameWaste: <input name="nameWaste" required="" value="${waste.nameWaste}" type="text" />
    <br /> <br />
    degreeOfDanger: <input name="degreeOfDanger" required="" value="${waste.degreeOfDanger}" type="text" />
    <br /> <br />
    hazardClass: <input name="hazardClass" required="" value="${waste.hazardClass}" type="text" />
    <br /> <br />
    kindOfActivity: <input name="kindOfActivity" required="" value="${waste.kindOfActivity}" type="text" />
    <br /> <br />
    educationStandard: <input name="educationStandard" required="" value="${waste.educationStandard}" type="text" />
    <br /> <br />
    <input value="Update Waste" type="submit" />
</form>
</body>
</html>
