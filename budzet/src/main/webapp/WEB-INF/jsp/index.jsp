
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
    <c:if test="${registrationComplete eq true}">
        <p>Rejestracja zakończona powodzeniem. Zaloguj się do systemu.</p>
    </c:if>
    <h2>Witaj na stronie serwisu do prowadzenia budżetu domowego</h2>
    <!-- CONTENT -->

</div>
<div style="clear: both"/>

</body>
</html>
