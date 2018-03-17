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
    <h2>Witaj na stronie serwisu do prowadzenia budżetu domowego.</h2>
    <!-- CONTENT -->
    <h2>Dodawanie budżetu</h2>
    <form name="regForm" action="./income" method="post">
        <p><label>ID Użytkownika</label>
            <input type="number" name="idUser">
        </p>

        <p><label>Rodzaj Wpłaty</label>
            <input type="text" name="incomeCategory">
        </p>

        <p><label>Kwota Wpłaty</label>
            <input type="number" name="incomeAmount">
        </p>

        <c:if test="${errorMsg eq true}">
            <span>Formularz zawiera błędy!!!</span>
        </c:if>

        <p><input type="submit" value="Dodaj">
        </p>

    </form>

</div>
<div style="clear: both"/>

</body>
</html>
