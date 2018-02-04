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
    <title>View and Edit Product</title>
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

    <form class="form-horizontal" action="editProduct?${_csrf.parameterName}=${_csrf.token}" id="form" method="post"
          role="form" enctype="multipart/form-data">
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="id"> Product ID </label>

            <div class="col-sm-9">
                <input readonly type="text" id="id" name="id" placeholder="name" value="${product.id}"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="name"> Product Name </label>

            <div class="col-sm-9">
                <input type="text" id="name" name="name" value="${product.name}" placeholder="name"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="brandTemp">Brand</label>

            <div class="col-xs-12 col-sm-9">
                <select id="brandTemp" name="brandTemp" readonly="" class="">
                    <option value="${product.brand.id}" selected>${product.brand.name}</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="productTypeTemp">Product Type</label>

            <div class="col-xs-12 col-sm-9">
                <select id="productTypeTemp" name="productTypeTemp" readonly class="">
                    <option value="${product.productType.id}" selected>${product.productType.name}</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="category">Category</label>

            <div class="col-xs-12 col-sm-9">
                <select multiple style="float: left;" name="categoryTemp" id="category" class="">
                    <c:set var="checkz" value="0"/>
                    <c:forEach items="${listCategory}" var="c">
                        <c:forEach var="pc" items="${product.category}">
                            <c:choose>
                                <c:when test="${c.id == pc.id}">
                                    <option selected value="${c.id}">${c.name}(${c.value}%)</option>
                                    <c:if test="${checkz==0}">
                                        <c:set var="checkz" value="1"/>
                                    </c:if>
                                </c:when>
                            </c:choose>

                        </c:forEach>
                        <c:if test="${checkz==0}">
                            <option value="${c.id}">${c.name}(${c.value}%)</option>
                        </c:if>
                        <c:set var="checkz" value="0"/>
                    </c:forEach>
                </select>

            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="price"> Price </label>

            <div class="col-sm-9">
                <input type="text" id="price" name="price" value="${product.price}" placeholder="Price"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="repository"> Repository </label>

            <div class="col-sm-9">
                <input type="text" id="repository" name="repository" value="${product.repository}"
                       placeholder="Repository" class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="weight"> Weight </label>

            <div class="col-sm-9">
                <input type="text" id="weight" name="weight" value="${product.weight}" placeholder="Weight"
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="content"> Description </label>

            <div class="col-sm-9">
                <%--<input type="text" id="content" name="content" placeholder="Description"--%>
                <%--class="col-xs-10 col-sm-5"/>--%>
                <textarea name="content" placeholder="Description" id="content" cols="56"
                          rows="5">${product.content}</textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="date"> Date Input </label>

            <div class="col-sm-9">
                <input type="text" id="date" name="date" value="${product.date}" placeholder="Date" readonly
                       class="col-xs-10 col-sm-5"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label no-padding-right" for="yearOfCreation"> Year Of Creation </label>

            <div class="col-sm-9">
                <input type="text" id="yearOfCreation" name="yearOfCreation" value="${product.yearOfCreation}"
                       placeholder="Year Of Creation" class="col-xs-10 col-sm-5"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="img">Image</label>
            <div class="col-sm-9" style="">
                <img id="img" width="300" height="200" src="/admin/images/${product.IMG}">
            </div>

        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="file"></label>
            <div class="col-sm-9">
                <input type="file" id="file" name="file" class="form-select-button"/>
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
<script type="text/javascript">


</script>

<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>
