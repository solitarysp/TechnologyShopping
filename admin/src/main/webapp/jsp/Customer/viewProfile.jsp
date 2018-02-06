<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 2/6/2018
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="../Layout/layoutAdminTop.jsp"/>

<div class="page-header">
    <h1>
        User Profile Page
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            Profile details
        </small>
    </h1>
</div><!-- /.page-header -->
<div class="width-20 label label-info label-xlg arrowed-in arrowed-in-right">
    <div class="inline position-relative">
        <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
            <i class="ace-icon fa fa-circle light-green"></i>
            &nbsp;
            <span class="white">${customer.name}</span>
        </a>

        <ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
            <li class="dropdown-header"> Change Status</li>

            <li>
                <a href="#">
                    <i class="ace-icon fa fa-circle green"></i>
                    &nbsp;
                    <span class="green">Available</span>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="ace-icon fa fa-circle red"></i>
                    &nbsp;
                    <span class="red">Busy</span>
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="ace-icon fa fa-circle grey"></i>
                    &nbsp;
                    <span class="grey">Invisible</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<div style="margin-top: 10px;" class="profile-user-info profile-user-info-striped">
    <div class="profile-info-row">
        <div class="profile-info-name"> Username</div>

        <div class="profile-info-value">
            <span class="editable" id="username">${customer.user}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Location</div>
        <c:forEach items="${customer.customerAddress}" var="ca" begin="0" end="1">
            <div class="profile-info-value">
                <i class="fa fa-map-marker light-orange bigger-110"></i>
                <span class="editable" id="country">${ca.nation}</span>
            </div>
        </c:forEach>

    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Email</div>

        <div class="profile-info-value">
            <span class="editable" id="age">${customer.email}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Total orders</div>

        <div class="profile-info-value">
            <span class="editable" id="signup">${countOrder}</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name"> Authority</div>

        <div class="profile-info-value">
            <span class="editable" id="login">${customer.authority}</span>
        </div>
    </div>
    <c:forEach items="${customer.customerAddress}" var="ca" varStatus="i">
        <div class="profile-info-row">
            <div class="profile-info-name"> Address ${i.index+1}</div>

            <div class="profile-info-value">
                <span class="editable" id="about">${ca.addressFull}</span>
            </div>
        </div>
    </c:forEach>
</div>
<jsp:include page="../Layout/layoutAdminBot.jsp"/>

</body>
</html>
