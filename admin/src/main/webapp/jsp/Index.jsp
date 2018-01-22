<%--
  Created by IntelliJ IDEA.
  User: Chi Can Em
  Date: 02-01-2018
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="layoutAdminTop.jsp"/>
<c:url value="/j_spring_security_logout" var="logoutUrl"/>
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <input type="submit" value="gui"/>
</form>
<jsp:include page="layoutAdminBot.jsp"/>
</body>
</html>