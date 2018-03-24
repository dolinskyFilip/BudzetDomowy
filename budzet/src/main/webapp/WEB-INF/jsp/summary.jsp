<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Serwis do prowadzenia budżetu domowego</title>
</head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>


<div class="w3-top">
    <%@ include file="menu.jsp"%>
    <!-- MENU -->
</div>
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
    <!-- CONTENT -->

                    <%-- model z bazy danych--%>
                    <h1>Twoje wpłaty: </h1>
                                        <table class="table table-striped">
                                          <thead>
                                            <tr>
                                            <th>CategoryID</th>
                                              <th>Nazwa Wpłaty</th>
                                              <th>Kwota </th>
                                              <th>Data </th>
                                            </tr>
                                          </thead>
                                          <tbody>
                                          <c:if test="${empty income}">
                                             <tr>
                                             <td colspan="8">No income to Display</td>
                                            </tr>
                                                 </c:if>
                                            <c:if test="${not empty income}">
                                        <c:forEach items="${income}" var="income">
                                             <tr>
                                                      <td>${income.categoryID}</td>
                                                      <td>${income.incomeName}</td>
                                                      <td>${income.incomeAmount}</td>
                                                      <td>${income.addDate}</td>
                                                    </tr>
                                        </c:forEach>
 </c:if>
                                        </tbody>
                    </table>
                    <h1>Twoje wydatki: </h1>
                            <table class="table table-striped">
                              <thead>
                                <tr>
                                <th>Kategoria</th>
                                  <th>Nazwa wydatku</th>
                                  <th>Kwota</th>
                                  <th>Data</th>
                                </tr>
                              </thead>
                              <tbody>
                              <c:if test="${empty outgoingsOutputs}">
                                                                           <tr>
                                                                           <td colspan="8">No outgoings to Display</td>
                                                                          </tr>
                                                                               </c:if>
                                                                          <c:if test="${not empty outgoingsOutputs}">

                            <c:forEach items="${outgoingsOutputs}" var="i">
                                 <tr>
                                          <td>${i.categoryName}</td>
                                          <td>${i.outgoingsName}</td>
                                          <td>${i.outgoingsAmount}</td>
                                          <td>${i.addDate}</td>
                                        </tr>
                            </c:forEach>
 </c:if>
                            </tbody>
        </table>
</header>


</body>
<footer class="w3-container w3-padding-64 w3-center w3-opacity">
 <p>Projekt końcowy kursu Java od podstaw realizowany przez Filip Doliński / Rafał Pietrzyk</p>
</footer>
</html>