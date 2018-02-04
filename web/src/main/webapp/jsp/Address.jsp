<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tungct
  Date: 1/23/18
  Time: 11:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/jsp/layout/header.jsp"/>
</head>
<body class="home page-template-default page page-id-2603 animated-css layout-switch home-construction-v2 primary-menu-not-active wpb-js-composer js-comp-ver-5.2.1 vc_responsive"
      data-scrolling-animations="false" data-header="fixed-header">
<!-- Loader -->
<div id="page-preloader"><span class="spinner"></span></div>
<!-- Loader end -->
<div class="sp-body">
    <div class="b-page">
        <jsp:include page="/jsp/layout/nav-header.jsp"/>
        <div style="margin-left: 30px;margin-right: 30px;" class="woocommerce">


            <h2 style="margin-left: 30px;">Address</h2>

            <c:set var="customerAddress" value="${CustomerAddress}"/>


            <c:choose>
                <c:when test="${not empty customerAddress}">
                    <table class="shop_table shop_table_responsive cart table" cellspacing="0">
                        <thead>
                        <tr>
                            <td class="product-thumbnail">&nbsp;</td>
                            <td class="product-name"><span>Name</span></td>
                            <td class="product-price"><span>Full addres</span></td>
                            <td class="product-quantity"><span>Phone</span></td>
                            <td class="product-subtotal"><span>Number of uses</span></td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="item" items="${CustomerAddress}">
                            <tr class="cart_item">


                                <td class="product-thumbnail">
                                    <p>${item.name}</p>
                                    <p>${item.email}</p>
                                    <p>${item.phone}</p>
                                    <p>${item.addressFull}</p>
                                    <p>${item.city}</p>
                                    <p>${item.nation}</p>
                                    <p>${item.zipCode}</p>
                                </td>

                                <td data-title="Product">
                                    <h3 class="caption">
                                            ${item.name}
                                    </h3>
                                </td>

                                <td data-title="Product">
                                    <h3 class="caption">
                                            ${item.addressFull}
                                    </h3>
                                </td>

                                <td data-title="Product">
                                    <h3 class="caption">
                                            ${item.phone}
                                    </h3>
                                </td>
                                <td data-title="Product">
                                    <h3 class="caption">
                                            ${item.orderProduct.size()}
                                    </h3>
                                </td>

                                <td class="product-remove">

                                    <a href="/account/DeleteCustomerAddress?id=${item.id}"
                                       class="btn btn-remove" title="Remove this item" data-product_id="2034"
                                       data-product_sku="3445"><i class="fa fa-trash fa-lg"></i></a></td>

                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="6" class="actions">

                                <div class="coupon">

                                    <button type="submit" class="button">Add Address</button>
                                </div>

                                <input type="submit" class="button" name="update_cart" value="Update Cart">
                            </td>
                        </tr>
                        </tbody>
                    </table>


                </c:when>
                <c:otherwise>
                    <h1 style="text-align: center">not address</h1>
                </c:otherwise>
            </c:choose>


        </div>
    </div>
    <jsp:include page="/jsp/layout/footer.jsp"/>
</div>
<jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
