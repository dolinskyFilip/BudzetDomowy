<%--
  Created by IntelliJ IDEA.
  User: wmroz
  Date: 11.02.2018
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
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
    <h2>Witaj na stronie sieci kin Kubuś Puchatek.</h2>
    <!-- CONTENT -->
    <h2>Formularz rejestracyjny</h2>
    <form name="regForm" action="./register" method="post">
        <p><label>Nazwa użytkownika</label>
        <input type="text" name="login">
        </p>

        <p><label>Hasło</label>
            <input type="password" name="password">
        </p>

        <p><label>Powtórz hasło</label>
            <input type="password" name="repeatPassword">
        </p>

        <p><label>Adres email</label>
            <input type="text" name="email">
        </p>

        <c:if test="${errorMsg eq true}">
            <span>Formularz zawiera błędy!!!</span>
        </c:if>

        <p><input type="submit" value="Zarejestruj">
        </p>

    </form>

</div>
<div style="clear: both"/>

</body>
</html>
