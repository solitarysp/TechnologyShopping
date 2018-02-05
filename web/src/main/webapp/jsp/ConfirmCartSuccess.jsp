<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


            <h2 style="margin-left: 30px;">Confirm Cart Success</h2>

            <c:set var="customerAddress" value="${orderProduct.customerAddress}"/>


            <form name="checkout" method="get" class="checkout woocommerce-checkout"
                  action="/account/confirmCart" enctype="multipart/form-data">

                <c:set var="totol1" value="0"/>
                <c:set var="totalCartFull" value="0"/>
                <c:forEach var="item" items="${listProduct}">
                    <c:set var="totol1" value="${totol1+ item.price * item.repository}"/>
                    <c:set var="totalCartFull" value="${totalCartFull+1}"/>
                </c:forEach>
                <fmt:formatNumber var="totol" type="number"
                                  maxFractionDigits="0" value="${totol1}"/>


                <h3 id="order_review_heading">Address your</h3>

                <div id="order_review" class="woocommerce-checkout-review-order">
                    <table class="shop_table woocommerce-checkout-review-order-table">
                        <thead>
                        <tr>
                            <th class="product-name">Address</th>
                            <th class="product-total"></th>
                        </tr>
                        </thead>

                        <c:set var="add" value="${customerAddress}"/>

                        <c:if test="${not empty add.name}">
                            <tr class="cart-subtotal">
                                <th>Name</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.name}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <c:if test="${not empty add.addressFull}">
                            <tr class="cart-subtotal">
                                <th>Full Address</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.addressFull}</span></span>
                                </th>
                            </tr>
                        </c:if>


                        <c:if test="${not empty add.email}">
                            <tr class="cart-subtotal">
                                <th>Email</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.email}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <c:if test="${not empty add.phone}">
                            <tr class="cart-subtotal">
                                <th>Phone</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.phone}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <c:if test="${not empty add.company}">
                            <tr class="cart-subtotal">
                                <th>Company</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.company}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <c:if test="${not empty add.nation}">
                            <tr class="cart-subtotal">
                                <th>nation</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.nation}</span></span>
                                </th>
                            </tr>
                        </c:if>


                        <c:if test="${not empty add.city}">
                            <tr class="cart-subtotal">
                                <th>City</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.city}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <c:if test="${not empty add.district}">
                            <tr class="cart-subtotal">
                                <th>District</th>
                                <th><span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol">${add.district}</span></span>
                                </th>
                            </tr>
                        </c:if>

                        <tr class="cart-subtotal">
                            <th>Paymen</th>
                            <th><span class="woocommerce-Price-amount amount"><span
                                    class="woocommerce-Price-currencySymbol">${orderProduct.payment.content}</span></span>
                            </th>
                        </tr>


                        </tfoot>
                    </table>
                </div>


                <h3 id="order_review_heading">Your order</h3>

                <div id="order_review" class="woocommerce-checkout-review-order">
                    <table class="shop_table woocommerce-checkout-review-order-table">
                        <thead>
                        <tr>
                            <th class="product-name">Product</th>
                            <th class="product-total">Total</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach var="item" items="${sessionScope.listCart}">
                            <c:set var="totol1" value="${totol1+ item.price * item.repository}"/>
                            <c:set var="totalCartFull" value="${totalCartFull+1}"/>

                            <tr class="cart_item">
                                <td class="product-name">
                                        ${item.name}&nbsp; <strong
                                        class="product-quantity">× ${item.repository}</strong></td>

                                <fmt:formatNumber var="totolProduct" type="number"
                                                  maxFractionDigits="2" value="${item.price * item.repository}"/>
                                <td class="product-total">
                                    <span class="woocommerce-Price-amount amount"><span
                                            class="woocommerce-Price-currencySymbol">${totolProduct}</span> VND</span>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>

                        <tr class="cart-subtotal">
                            <th>Subtotal</th>
                            <td><span class="woocommerce-Price-amount amount"><span
                                    class="woocommerce-Price-currencySymbol">${totol}</span> VND</span></td>
                        </tr>


                        <tr class="order-total">
                            <th>Total</th>
                            <td><strong><span class="woocommerce-Price-amount amount"><span
                                    class="woocommerce-Price-currencySymbol">${totol}</span> VND</span></strong></td>
                        </tr>


                        </tfoot>
                    </table>
                </div>


            </form>


        </div>
    </div>
    <jsp:include page="/jsp/layout/footer.jsp"/>
</div>
<jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
