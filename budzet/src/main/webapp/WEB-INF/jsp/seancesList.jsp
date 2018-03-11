<%--
  Created by IntelliJ IDEA.
  User: wmroz
  Date: 11.02.2018
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sieć kin Kubuś Puchatek</title>
</head>
<body>


<div style="float:left; width: 30%">
    <%@ include file="menu.jsp"%>
    <!-- MENU -->
</div>
<div style="float:right; width: 70%">
    <h2>Wyszukiwarka seansów:</h2>
    <!-- CONTENT -->
    <form action="./seances">
        <label>Wybierz kino:</label>
        <select name="cinema">
            <option value="-1">--Wybierz</option>
            <%-- model z bazy danych--%>
            <c:forEach items="${cinemas}" var="cinema">
                <option value="${cinema.id}">${cinema.name} - ${cinema.city}</option>
            </c:forEach>
        </select>
        <input type="submit" value="Dalej">
    </form>
    <table>
        <th>Film</th>
        <th>Godziny seansów</th>
        <%-- Lista filmów --%>
        <c:forEach items="${seances}" var="seance">
            <tr>
                <td>${seance.key}</td>
                <td>
                <c:forEach items="${seance.value}" var="details">
                    <a href="/reservation?id_seance=${details.id}"><f:formatDate value="${details.date}" pattern="hh:mm"/></a> <br/>
                </c:forEach>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
<div style="clear: both"/>

</body>
</html>
