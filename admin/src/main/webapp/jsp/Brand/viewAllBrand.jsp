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


<h3 class="header smaller lighter blue">Brands</h3>

<div class="table-header">
    Results for "Brands"
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
        <th>Brand name</th>
        <th class="hidden-480">Description</th>

        <th></th>
    </tr>
    </thead>

    <tbody>

    <c:forEach items="${listBrands}" var="b" varStatus="loop">
        <tr>
            <td class="center">
                <label class="pos-rel">
                    <input type="checkbox" class="ace"/>
                    <span class="lbl"></span>
                </label>
            </td>

            <td>
                <a href="#">${b.id}</a>
            </td>
            <td>${b.name}</td>
            <td class="hidden-480">${b.description}</td>

            <td>
                <div class="hidden-sm hidden-xs action-buttons">
                    <a class="blue" href="">
                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                    </a>

                    <a class="green" href="#">
                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                    </a>

                    <a class="red" onclick="removeBrand('${b.id}',this)" href="#">
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
    function removeBrand(id,row) {
        var data = {'id': id};

        console.log(data.id)
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "removeBrand?${_csrf.parameterName}=${_csrf.token}",
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
