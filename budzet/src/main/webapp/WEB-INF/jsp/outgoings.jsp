<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Serwis do prowadzenia budżetu domowego</title>
</head>
<body>


<div style="float:left; width: 30%">
    <%@ include file="menu.jsp"%>
    <!-- MENU -->
</div>
<div style="float:right; width: 70%">
    <h2>Witaj na stronie serwisu do prowadzenia budżetu domowego</h2>
    <!-- CONTENT -->
    <h2>Dodaj swój wydatek</h2>
    <form name="loginForm" action="./outgoings" method="post">
    <label>Wybierz kategorię:</label>
                <select name="categoryID">
                    <option value="-1">--Wybierz</option>
                    <%-- model z bazy danych--%>
                    <c:forEach items="${category}" var="category">
                        <option value="${category.categoryID}">${category.categoryName} - ${category.categoryType}</option>
                    </c:forEach>
                </select>
                <p><label>Podaj nazwę wydatku</label>
                        <input type="text" name="outgoingsName">
                        </p>
        <p><label>Podaj kwotę</label>
        <input type="number" name="outgoingsAmount">
        </p>
        <p><label>Podaj datę:</label>
                <input type="text" name="addDate">
                </p>
        <p><input type="submit" value="Dodaj">
        </p>

    </form>

</div>
<div style="clear: both"/>

</body>
</html>