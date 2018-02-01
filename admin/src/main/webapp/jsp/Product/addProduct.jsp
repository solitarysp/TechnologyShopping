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
    <title>Add Product</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>
<div>
    <div class="page-header">
        <h1>
            Form Elements
            <small>
                <i class="ace-icon fa fa-angle-double-right"></i>
                Add new your Product
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="col-xs-12">
        <form class="form-horizontal" action="addProduct?${_csrf.parameterName}=${_csrf.token}" id="form" method="post" role="form" enctype="multipart/form-data">

            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="id"> Product ID </label>

                <div class="col-sm-9">
                    <input readonly type="text" id="id" name="id" placeholder="Product ID" class="col-xs-10 col-sm-5"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="name"> Name </label>

                <div class="col-sm-9">
                    <input type="text" id="name" name="name" placeholder="Name" class="col-xs-10 col-sm-5"/>
                </div>
            </div>


            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="brandTemp">Brand</label>

                <div class="col-xs-12 col-sm-9">
                    <select id="brandTemp" name="brandTemp" class="">
                        <c:forEach items="${listBrand}" var="b">
                            <option selected value="${b.id}">${b.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="ProductType">Product Type</label>

                <div class="col-xs-12 col-sm-9">
                    <select id="ProductType" name="productTypeTemp" class="" onchange="generateID()">
                        <c:forEach items="${listProductType}" var="pt">
                            <option selected value="${pt.name}-${pt.id}">${pt.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="category">Category</label>

                <div class="col-xs-12 col-sm-9">
                    <select multiple style="float: left;" name="categoryTemp" id="category" class="">
                        <c:forEach items="${listCategory}" var="c">
                            <option value="${c.id}">${c.name}(${c.value}%)</option>
                        </c:forEach>
                    </select>
                    <%--<input style="float: left; height: 30px; width: 50px; margin-left: 10px;text-align: center;"--%>
                           <%--id="sale" readonly type="text"/>--%>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="file">Image</label>
                <div class="col-sm-9">
                    <input type="file" id="file" name="file" class="form-select-button"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="price"> Price (VNĐ) </label>

                <div class="col-sm-9">
                    <input type="number" id="price" name="price" placeholder="Price"
                           class="col-xs-10 col-sm-5"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="repository"> Repository </label>

                <div class="col-sm-9">
                    <input type="number" id="repository" name="repository" placeholder="repository"
                           class="col-xs-10 col-sm-5"/>
                </div>
            </div>


            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="weight"> Weight (Kg)</label>
                <div class="col-sm-9">
                    <input type="number" id="weight" name="weight" placeholder="Weight"
                           class="col-xs-10 col-sm-5"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="content"> Description </label>

                <div class="col-sm-9">
                    <%--<input type="text" id="content" name="content" placeholder="Description"--%>
                    <%--class="col-xs-10 col-sm-5"/>--%>
                    <textarea name="content" placeholder="Description" id="content" cols="56" rows="5"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label no-padding-right" for="yearOfCreation"> Year Of Creation </label>

                <div class="col-sm-9">
                    <input type="text" id="yearOfCreation" name="yearOfCreation" placeholder="Year Of Creation"
                           class="col-xs-10 col-sm-5"/>
                </div>
            </div>

            <div class="col-md-offset-3 col-md-9">
                <button class="btn btn-info" type="submit">
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
</div>

<script type="text/javascript">

    window.onload = function () {
        document.getElementById("sale").value = ${listCategory.get(0).value}+"%";
        var x = document.getElementById("ProductType").value;
        var d = new Date();
        var n = d.getTime();
        console.log(x + n);
        document.getElementById("id").value = x + n;
    }

    function generateID() {
        var x = document.getElementById("ProductType").value;
        var d = new Date();
        var n = d.getTime();
        console.log(x + n);
        document.getElementById("id").value = x + n;
    }

    $('#category').on('change', function () {
        var value = $(this).val();
        console.log(value);
        if (value != null) {

            document.getElementById("sale").value = value + "%";
        }
    });
</script>
</div>
<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>
