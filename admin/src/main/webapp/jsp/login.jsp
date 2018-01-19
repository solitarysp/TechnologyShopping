<%--
  Created by IntelliJ IDEA.
  User: Chi Can Em
  Date: 19-01-2018
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Admin</title>
</head>
<body>
<div id="login-box">
    <h2>Login with Username and Password</h2>
    ${loginUrl}
    ${msg}
    <form name='f' action="login.html" method='POST'>
        <table>
            <tr>
                <td>User:</td>
                <td><input type='text' name='username' value=''></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password'/></td>
            </tr>
            <tr>
                <td><input name="submit" type="submit" value="submit"/></td>
            </tr>
            <tr>
                <td>Remember Me:</td>
                <td><input name="remember-me" type="checkbox"/></td>
            </tr>

        </table>
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>
</div>
</body>
</html>
