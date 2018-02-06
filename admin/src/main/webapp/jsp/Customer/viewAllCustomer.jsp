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
    <title>View Customer</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>


<h3 class="header smaller lighter blue">Customers</h3>

<div class="table-header">
    <c:choose>
        <c:when test="${param.name !=null && param.name !=''}">
            Search Results for : <span style="color: white;font-weight: bold">${param.name}</span>
        </c:when>
        <c:otherwise>
            Results for "Customers"
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
        <form action="/admin/viewProduct">
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
        <th class="hidden-480">Customer Name</th>
        <th>User Name</th>
        <th>Email</th>
        <th>Authority</th>
        <th></th>
    </tr>
    </thead>

    <tbody>

    <c:forEach items="${customerList}" var="c">
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
            <td class="hidden-480">${c.name}</td>
            <td>${c.user}</td>
            <td>${c.email}</td>
            <td>${c.authority}</td>
            <td>
                <div class="hidden-sm hidden-xs action-buttons">
                    <a class="blue" href="/admin/viewProfile?id=${c.id}">
                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
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

<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>

