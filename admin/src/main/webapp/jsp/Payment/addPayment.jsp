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
    <title>Add Payment</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>
<div class="page-header">
    <h1>
        Form Elements
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            Add new your Payment
        </small>
    </h1>
</div><!-- /.page-header -->


<div class="col-xs-12">

    <form class="form-horizontal" id="form" method="post" role="form">
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="content"> Payment Content </label>

            <div class="col-sm-9">
                <input type="text" id="content" name="content" placeholder="name" class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="col-md-offset-3 col-md-9">
            <button onclick="addPayment()" class="btn btn-info" type="button">
                <i class="ace-icon fa fa-check bigger-110"></i>
                Submit
            </button>

            &nbsp; &nbsp; &nbsp;
            <button class="btn" type="reset">
                <i class="ace-icon fa fa-undo bigger-110"></i>
                Reset
            </button>
        </div>
    </form>
</div>
    <script type="text/javascript">
        function addPayment() {
            var data = $("form").serialize();
            $.ajax({
                url: "addPayment?${_csrf.parameterName}=${_csrf.token}",
                type: "post",
                dataType: "text",
                data: data,
                success: function (result) {
                    console.log(result == 'success');
                    if (result.trim() == 'success') {
                        $('form')[0].reset();
                        swal("Thành công!", "Thêm thành công!", "success");
                        window.location.replace("/admin/getAllPayment");
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
<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>
