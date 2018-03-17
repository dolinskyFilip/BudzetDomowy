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
    <p><label>Podaj ID</label>
            <input type="number" name="userID">
            </p>
        <p><label>Podaj kwotę</label>
        <input type="number" name="outgoingsAmount">
        </p>
        <label>Wybierz kategorię</label>
        <p>
        <input type="number" name="outgoingsCategory">
<select name="category">
  <option value="zus">ZUS</option>
  <option value="us">US</option>
  <option value="zakupy">Zakupy</option>
  <option value="zabawa">Zabawa</option>
</select>
  </p>

        <p><input type="submit" value="Dodaj">
        </p>

    </form>

</div>
<div style="clear: both"/>

</body>
</html>