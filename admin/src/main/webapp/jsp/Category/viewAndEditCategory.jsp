<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 1/24/2018
  Time: 12:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Category</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>
<div class="page-header">
    <h1>
        Form Elements
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            Common form elements and layouts
        </small>
    </h1>
</div><!-- /.page-header -->


<div class="col-xs-12">

    <form class="form-horizontal" id="form" method="post" role="form">
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="id"> Category ID </label>

            <div class="col-sm-9">
                <input readonly type="text" id="id" name="id" placeholder="name" value="${category.id}" class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="name"> Category Name </label>

            <div class="col-sm-9">
                <input type="text" id="name" name="name" value="${category.name}" placeholder="name" class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="description"> Category Description </label>

            <div class="col-sm-9">
                <input type="text" id="description" name="description" value="${category.description}" placeholder="description"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="value"> Sale up to </label>

            <div class="col-sm-9">
                <input type="text" id="value" name="value" value="${category.value}" placeholder="Sale up to"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>
        <div class="col-md-offset-3 col-md-9">
            <button onclick="updateCategory()" class="btn btn-info" type="button">
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
    function updateCategory() {
        var data = $("form").serialize();
        $.ajax({
            url: "editCategory?${_csrf.parameterName}=${_csrf.token}",
            type: "post",
            dataType: "text",
            data: data,
            success: function (result) {
                console.log(result == 'success');
                if (result.trim() == 'success') {
                    $('form')[0].reset();
                    swal("Congratulate!", "Updated Success!", "success");
                    window.location.replace("/admin/getAllCategory");
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

<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</html>
