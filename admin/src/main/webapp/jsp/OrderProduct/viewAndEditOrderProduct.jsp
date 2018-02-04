<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 2/4/2018
  Time: 11:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Order Details</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>


<h3 class="header smaller lighter blue">Orders</h3>

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
        <span style="line-height: 25px;">Search: &nbsp;&nbsp; </span> <input style="width: 200px;float: right;" type="search" class="form-control input-sm">
    </div>
</div>
<table class="table table-striped table-bordered table-hover">
    <thead class="thin-border-bottom">
    <tr>
        <th>
            ID
        </th>

        <th>
            Product
        </th>

        <th>
            <i>@</i>
            Quantity
        </th>
        <th class="hidden-480">Price</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${orderProduct.refProductOrder}" var="od">
        <tr>
            <td class="">${od.id}</td>

            <td class="">${od.product.name}</td>

            <td>
                <a href="#">${od.quantity}</a>
            </td>

            <td class="hidden-480">
                ${od.price}
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>

<div class="profile-user-info profile-user-info-striped">
    <div class="profile-info-row">
        <div class="profile-info-name"> Username </div>

        <div class="profile-info-value">
            <span class="editable" id="username">${orderProduct.customer.name}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Location </div>

        <div class="profile-info-value">
            <i class="fa fa-map-marker light-orange bigger-110"></i>
            <span class="editable" id="country">${orderProduct.customerAddress.nation}</span>
            <span class="editable" id="city">${orderProduct.customerAddress.city}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Email </div>

        <div class="profile-info-value">
            <span class="editable" id="age">${orderProduct.customer.email}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Date order </div>

        <div class="profile-info-value">
            <span class="editable" id="signup">${orderProduct.date}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Total Bill </div>

        <div class="profile-info-value">
            <span class="editable" id="login">${orderProduct.totalBill}$</span>
        </div>
    </div>

</div>


<jsp:include page="../Layout/layoutAdminBot.jsp"/>
</body>
</html>
