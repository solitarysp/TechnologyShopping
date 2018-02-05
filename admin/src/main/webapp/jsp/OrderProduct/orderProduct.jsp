<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 2/4/2018
  Time: 9:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>View all orders</title>
    <script src="js/jquery-1.11.3.min.js"></script>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>


<h3 class="header smaller lighter blue">Products</h3>

<div class="table-header">
    Results for "Orders"
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
        <span style="line-height: 25px;">Search: &nbsp;&nbsp; </span> <input style="width: 200px;float: right;"
                                                                             type="search"
                                                                             class="form-control input-sm">
    </div>
</div>


<table id="dynamic-table" class="table table-striped table-bordered table-hover">
    <thead>
    <tr>
        <th>ID</th>
        <th>Date</th>
        <th>Status Payment</th>
        <th>Status Delivery</th>
        <th>Total Bill</th>
        <th>Total Weight</th>
        <th>Delivery Fee</th>
        <th class="hidden-480 sorting">&nbsp;&nbsp;&nbsp;Status&nbsp;&nbsp;&nbsp;</th>
        <th>Customer</th>
        <th></th>
    </tr>
    </thead>

    <tbody>


    <c:forEach items="${orderProducts}" var="op" varStatus="i">
        <tr>
            <td>
                <a href="#">${op.id}</a>
            </td>
            <td>${op.date}</td>
            <td>${op.statusPayment}</td>
            <td>${op.statusDelivery}</td>
            <td>${op.totalBill}</td>
            <td>${op.totalWeight}</td>
            <td>${op.feeDelivery}</td>
            <td>
                <c:choose>
                    <c:when test="${op.statusBill eq 'Expiring'}">
                        <span class="label label-success arrowed-in arrowed-in-right">${op.statusBill}</span>
                    </c:when>
                    <c:otherwise>
                        <span class="label label-info arrowed-in arrowed-in-right">${op.statusBill}</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${op.customer.name}</td>
            <td>
                <div class="hidden-sm hidden-xs btn-group">
                    <a class="blue" href="/admin/findOrderProductByID?id=${op.id}">
                        <i class="ace-icon fa fa-search-plus bigger-150"></i>
                    </a>
                    <c:choose>
                        <c:when test="${op.statusBill eq 'Expiring'}">
                            <button disabled id="unblock${i.index}" class="btn btn-xs btn-success"
                                    onclick="unblock(this,'#block${i.index}',${op.id})" href="#">
                                <i class="ace-icon fa fa-check bigger-120"></i>
                            </button>
                            <button id="block${i.index}" class="btn btn-xs btn-warning"
                                    onclick="block(this,'#unblock${i.index}',${op.id})" href="#">
                                <i class="ace-icon fa fa-flag bigger-120"></i>
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button id="unblock${i.index}" class="btn btn-xs btn-success"
                                    onclick="unblock(this,'#block${i.index}',${op.id})" href="#">
                                <i class="ace-icon fa fa-check bigger-120"></i>
                            </button>
                            <button disabled id="block${i.index}" class="btn btn-xs btn-warning"
                                    onclick="block(this,'#unblock${i.index}',${op.id})" href="#">
                                <i class="ace-icon fa fa-flag bigger-120"></i>
                            </button>
                        </c:otherwise>
                    </c:choose>
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
<script type="text/javascript">
    //    $( document ).ready(function() {
    //        var table = document.getElementById('dynamic-table');
    //        var count = table.rows.length;
    //        console.log(count);
    //        for(var i = 1; i<count;i++){
    //            if((table.rows[i].cells[7].innerText)=='Blocked'){
    ////                table.rows[i].css('opacity',0.5);
    //                $(table.rows[i]).parents().first().css('opacity',0.5);
    //            }
    //        }
    //    });


    var table = document.getElementById('dynamic-table');
//    var x = '#unblock';
//    var y = '#block';
//    check = 1;
//    window.onload = function () {
//
//        for (var i = 0; i <= 10; i++) {
//            console.log(table.rows[i].cells[7].value);
//            if (table.rows[i].cells[7].value == 'Expiring') {
//                $(x + i).hide();
//            }
//            if (table.rows[i].cells[7].value == 'Blocking') {
//                $(y + i).hide();
//            }
//        }
//    };

    var rIndex;
    for (var i = 1; i <= table.rows.length; i++) {
        table.rows[i].onmousedown = function () {
            rIndex = this.rowIndex;
        };
    }


    function block(btn, id,idP) {
        var data = {'id': idP};
        swal({
            title: "Are you sure?",
            text: "Once clicked, Do you want to block this order?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "blockOrder?${_csrf.parameterName}=${_csrf.token}",
                        type: "post",
                        dataType: "text",
                        data: data,
                        success: function (result) {
                            console.log(result == 'success');
                            if (result.trim() == 'success') {
                                swal("Poof! Your order has been blocked!", {
                                    icon: "success",
                                });
                                table.rows[rIndex].cells[7].innerHTML = "<span class='label label-info arrowed-in arrowed-in-right'>Blocking</span>";
                                hidefade(btn, id);
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

    function unblock(btn, id,idP) {
        var data = {'id': idP};
        swal({
            title: "Are you sure?",
            text: "Once clicked, Do you want to unblock this order?",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    $.ajax({
                        url: "unblockOrder?${_csrf.parameterName}=${_csrf.token}",
                        type: "post",
                        dataType: "text",
                        data: data,
                        success: function (result) {
                            console.log(result == 'success');
                            if (result.trim() == 'success') {
                                swal("Poof! Your order has been unblocked!", {
                                    icon: "success",
                                });
                                table.rows[rIndex].cells[7].innerHTML = "<span class='label label-success arrowed-in arrowed-in-right'>Expiring</span>";
                                hidefade(btn, id);
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

    function hidefade(a, b) {
        $(a).prop("disabled", true);
        $(b).prop("disabled", false);
    }


</script>

<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>
