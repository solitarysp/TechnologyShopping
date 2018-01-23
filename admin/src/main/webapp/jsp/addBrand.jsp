<%--
  Created by IntelliJ IDEA.
  User: Chi Can Em
  Date: 22-01-2018
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>add Category</title>
</head>
<body>
<jsp:include page="layoutAdminTop.jsp"/>
<div>
    <h1>thêm Brand</h1>
    <form id="form" method="post">
        name:<input name="name"/>
        description:<input name="description"/>
    </form>
    <button onclick="addBrand()">add</button>
    <script type="text/javascript">
        function addBrand() {
            var data = $("form").serialize();
            $.ajax({
                url: "addBrand?${_csrf.parameterName}=${_csrf.token}",
                type: "post",
                dataType: "text",
                data: data,
                success: function (result) {
                    console.log(result == 'success');
                    if (result.trim() == 'success') {
                        $('form')[0].reset();
                        swal("Thành công!", "Thêm thành công!", "success");
                    }
                },
                complete: function (xhr, textStatus) {
                    if (xhr.status == 403) {
                        $('#result').html("Bạn không có quyền xem");
                        $('#stt').html("Bạn không có quyền xem");
                    }
                }
            });


        }
    </script>
</div>
<jsp:include page="layoutAdminBot.jsp"/>
</body>
</html>
