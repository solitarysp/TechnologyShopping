<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 1/24/2018
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>add Category</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>


<h3 class="header smaller lighter blue">Category</h3>

<div class="table-header">
    <c:choose>
        <c:when test="${param.name !=null && param.name !=''}">
            Search Results for : <span style="color: white;font-weight: bold">${param.name}</span>
        </c:when>
        <c:otherwise>
            Results for "Category"
        </c:otherwise>
    </c:choose>
</div>


<div style="float: left;height: 50px;" class="col-xs-6">
    <div style="margin-top: 10px;">
        Display <select name="records">
        <option value="10">10</option>
        <option value="25">25</option>
        <option value="50">50</option>
        <option value="100">100</option>
    </select>
        records
    </div>


</div>
<div style="float: right;" class="col-xs-6">
    <div style="margin-top: 10px;float:right;">
        <span style="line-height: 25px;">Search: &nbsp;&nbsp; </span>

        <form action="/admin/getAllCategory">
            <input name="name" style="width: 200px;float: right;" type="search" class="form-control input-sm">
        </form>

    </div>
</div>

<table id="dynamic-table" class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th class="center">
            <label class="pos-rel">
                <input type="checkbox" class="ace"/>
                <span class="lbl"></span>
            </label>
        </th>
        <th>ID</th>
        <th>Category name</th>
        <th class="hidden-480">Description</th>
        <th>Sale Up To</th>
        <th></th>
    </tr>
    </thead>

    <tbody>

    <c:forEach items="${listCategories}" var="c">
        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace"/>
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">${c.id}</a>
            </td>
            <td>${c.name}</td>
            <td class="hidden-480">${c.description}</td>
            <td>${c.value}</td>
            <td>
                <div class="hidden-sm hidden-xs action-buttons">
                    <a class="blue" href="/admin/findCategoryByID?id=${c.id}">
                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                    </a>

                    <a class="green" href="#">
                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                    </a>

                    <a class="red" onclick="removeCategory('${c.id}',this)" href="#">
                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                    </a>
                </div>

                <div class="hidden-md hidden-lg">
                    <div class="inline pos-rel">
                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown"
                                data-position="auto">
                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                                <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                </a>
                            </li>

                            <li>
                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                </a>
                            </li>

                            <li>
                                <a class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i
                                                                                            class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
    </c:forEach>


    </tbody>
</table>
<script type="application/javascript">
    function removeCategory(id, row) {
        var data = {'id': id};

        console.log(data.id)
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this record!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "removeCategory?${_csrf.parameterName}=${_csrf.token}",
                        type: "post",
                        dataType: "text",
                        data: data,
                        success: function (result) {
                            console.log(result == 'success');
                            if (result.trim() == 'success') {
                                swal("Poof! Your record has been deleted!", {
                                    icon: "success",
                                });

                                $(row).parents('tr').first().remove();

                            }
                        },
                        complete: function (xhr, textStatus) {
                            if (xhr.status == 403) {
                                $('#result').html("Bạn không có quyền xem");
                                $('#stt').html("Bạn không có quyền xem");
                            }
                        }
                    });

                } else {
                    swal("Your record is safe!");
                }
            });


    }

</script>

<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>

