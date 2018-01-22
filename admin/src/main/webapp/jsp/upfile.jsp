<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Upload File Request Page</title>
</head>
<body>


<jsp:include page="layoutAdminTop.jsp"/>
<form method="POST" action="uploadFile?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
    Select File: <input type="file" name="file"/>
    <input type="submit" value="Upload File"/>
</form>
<jsp:include page="layoutAdminBot.jsp"/>
</body>
</html>