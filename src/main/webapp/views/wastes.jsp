<%--
  Created by IntelliJ IDEA.
  User: verishkoalexey
  Date: 10.02.2021
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<title>Directory</title>
<body>
<h2>Directory</h2>
<a href="<%=request.getContextPath()%>/addWaste">Add</a>
<c:if test="${not empty msg}">
    ${msg}
</c:if>
<c:choose>
    <c:when test="${wastes != null}">
        <h3>List of Wastes</h3>
        <table id="myTable" cellpadding="5" cellspacing="5">
            <thead>
            <tr>
                <th onclick="sortTable(0)">Code Waste</th>
                <th onclick="sortTable(1)">nameWaste</th>
                <th onclick="sortTable(2)">degreeOfDanger</th>
                <th onclick="sortTable(3)">hazardClass</th>
                <th onclick="sortTable(4)">kindOfActivity</th>
                <th onclick="sortTable(5)">educationStandard</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="w" items="${wastes}">
                <tr>
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
<script>
    function sortTable(n) {
        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
        table = document.getElementById("myTable");
        switching = true;
        //Set the sorting direction to ascending:
        dir = "asc";
        /*Make a loop that will continue until
        no switching has been done:*/
        while (switching) {
            //start by saying: no switching is done:
            switching = false;
            rows = table.rows;
            /*Loop through all table rows (except the
            first, which contains table headers):*/
            for (i = 1; i < (rows.length - 1); i++) {
                //start by saying there should be no switching:
                shouldSwitch = false;
                /*Get the two elements you want to compare,
                one from current row and one from the next:*/
                x = rows[i].getElementsByTagName("TD")[n];
                y = rows[i + 1].getElementsByTagName("TD")[n];
                /*check if the two rows should switch place,
                based on the direction, asc or desc:*/
                if (dir == "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        //if so, mark as a switch and break the loop:
                        shouldSwitch= true;
                        break;
                    }
                } else if (dir == "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                        //if so, mark as a switch and break the loop:
                        shouldSwitch = true;
                        break;
                    }
                }
            }
            if (shouldSwitch) {
                /*If a switch has been marked, make the switch
                and mark that a switch has been done:*/
                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                switching = true;
                //Each time a switch is done, increase this count by 1:
                switchcount ++;
            } else {
                /*If no switching has been done AND the direction is "asc",
                set the direction to "desc" and run the while loop again.*/
                if (switchcount == 0 && dir == "asc") {
                    dir = "desc";
                    switching = true;
                }
            }
        }
    }
</script>
</body>
</html>

