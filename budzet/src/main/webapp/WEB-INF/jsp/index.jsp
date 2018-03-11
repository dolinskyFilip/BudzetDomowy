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
    <c:if test="${registrationComplete eq true}">
        <p>Rejestracja zakończona powodzeniem. Zaloguj się do systemu.</p>
    </c:if>
    <h2>Witaj na stronie sieci kin Kubuś Puchatek.</h2>
    <!-- CONTENT -->

</div>
<div style="clear: both"/>

</body>
</html>
