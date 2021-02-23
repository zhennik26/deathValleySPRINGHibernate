<%--
  Created by IntelliJ IDEA.
  User: Train13
  Date: 23.02.2021
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>DeathValley</title>
</head>
<body>


<c:if test="${richestUser.name!=null}">
    <h2>${test}</h2>
</c:if>


<input type="text"
<c:if test="${richestUser.name!=null}">
       value="<c:out value="${richestUser.name}"/>"
</c:if>
<c:if test="${richestUser.name==null}">
       value="Richest User"
</c:if>
>
<form method="get" name="richestUser" action="/getRichestUser">
    <input type="submit" name="getRichestUser" value="getRichestUser">
</form>
<input type="text"
<c:if test="${accountsSum!=null}">
       value="<c:out value="${accountsSum}"/>"
</c:if>
<c:if test="${accountsSum==null}">
       value="Accounts Sum"
</c:if>
>
<form method="get" name="accountsSum" action="/getAccountsSum">
    <input type="submit" name="getAccountSum" value="getAccountSum">
</form>

</body>
</html>

