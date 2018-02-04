<%@ page import="com.fpt.entity.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: tungct
  Date: 1/23/18
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/jsp/layout/header.jsp"/>
    <script type="javascript">

        function updateCart() {
            frmMain.action = "/updateCart"
            frmMain.submit();
        }
    </script>
</head>
<body class="home page-template-default page page-id-2603 animated-css layout-switch home-construction-v2 primary-menu-not-active wpb-js-composer js-comp-ver-5.2.1 vc_responsive"
      data-scrolling-animations="false" data-header="fixed-header">
<!-- Loader -->
<div id="page-preloader"><span class="spinner"></span></div>
<!-- Loader end -->
<div class="sp-body">
    <div class="b-page">
        <jsp:include page="/jsp/layout/nav-header.jsp"/>

        <div class="b-page-header custom-7bg-">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">Cart</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled">
                                <li class="font-additional font-weight-normal color-main text-uppercase"><a
                                        href="http://wpsparrow.com/wordpress/ismiler" class="color-main">Home</a></li>
                                <li class="font-additional font-weight-normal color-main text-uppercase">Cart</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <section class="page-content" id="pageContent" style="margin-bottom: 30px; min-height: 300px">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-7 col-md-12 col2-right  ">

                        <div class="rtd">
                            <div class="woocommerce">
                                <c:choose>
                                    <c:when test="${empty sessionScope['listCart']}">
                                        <h1 style="text-align: center;line-height: 300px">Giỏ hàng trống.</h1>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="woocommerce-message"><a
                                                href="http://wpsparrow.com/wordpress/ismiler/cart/"
                                                class="button wc-forward">View cart</a> &ldquo;BLU
                                            VIVO 5 Smartphone&rdquo; has been added to your cart.
                                        </div>
                                        <form action="/updateCart?${_csrf.parameterName}=${_csrf.token}" method="post"
                                              class="cart-table ">


                                            <div class="b-table b-cart-table ">
                                                <table class="shop_table shop_table_responsive cart table"
                                                       cellspacing="0">
                                                    <thead>
                                                    <tr>
                                                        <td class="product-thumbnail">&nbsp;</td>
                                                        <td class="product-name"><span>Product</span></td>
                                                        <td class="product-price"><span>Price</span></td>
                                                        <td class="product-quantity"><span>Quantity</span></td>
                                                        <td class="product-subtotal"><span>Total</span></td>
                                                        <td class="product-remove"><span>remove</span></td>
                                                    </tr>
                                                    </thead>
                                                    <tbody>

                                                    <%
                                                        ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("listCart");
                                                        float totalCart = 0;
                                                        for (Product p : list) {
                                                            String id = p.getId();
                                                            String img = p.getIMG();
                                                            String name = p.getName();
                                                            float price = p.getPrice();
                                                            int quantity = p.getRepository();
                                                            float total = price * quantity;
                                                            totalCart = +total;
                                                    %>
                                                    <tr class="cart_item">


                                                        <td class="product-thumbnail">
                                                            <a href="/viewProduct.html?id=<%=id%>"><img
                                                                    width="170" height="150"
                                                                    src="admin/images/<%=img%>"
                                                                    class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                    alt="<%=name%>"/></a></td>

                                                        <td data-title="Product">
                                                            <div class="caption">
                                                                <a class="product-name"
                                                                   href="/viewProduct.html?id=<%=id%>"><%=name%>
                                                                </a></div>
                                                        </td>

                                                        <td class="product-price" data-title="Price">
                                <span class="product-price total-price">
                                <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol"></span><%=price%></span> VND </span>
                                                        </td>
                                                        <input style="display: none" type="text" name="txtID"
                                                               value="<%=id%>">
                                                        <td class="product-quantity" data-title="Quantity">

                                                            <div class="input-group btn-block qty-block"
                                                                 data-trigger="spinner">
                                                                <a class="spinner-btn-mod" href="javascript:;"
                                                                   data-spin="down">-</a>

                                                                    <input type="text" data-rule="quantity" step="1" min="0" max=""
                                                                           name="txtQuantity"
                                                                           value="<%=quantity%>" title="Quantity" class="input-text qty text"
                                                                           size="4" pattern="[0-9]*" inputmode="numeric"/>
                                                                    <a class="spinner-btn-mod" href="javascript:;"
                                                                       data-spin="up">+</a>
                                                                </div>


                                                        </td>

                                                        <td class="product-subtotal" data-title="Total">
                                <span class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol"></span><%=total%></span> VND
                                                        </td>
                                                        <td class="product-remove">

                                                            <a href="/delCartItem?id=<%=id%>"
                                                               class="btn btn-remove" title="Remove this item"
                                                               data-product_id="2977" data-product_sku=""><i
                                                                    class="fa fa-trash fa-lg"></i></a></td>
                                                    </tr>

                                                    <%
                                                        }

                                                    %>


                                                    <tr>
                                                        <td colspan="6" class="actions">

                                                            <div class="coupon">

                                                                <label for="coupon_code">Coupon:</label> <input type="text"
                                                                                                                name="coupon_code"
                                                                                                                class="input-text"
                                                                                                                id="coupon_code"
                                                                                                                value=""
                                                                                                                placeholder="Coupon code"/>
                                                                <input type="submit" class="button" name="apply_coupon"
                                                                       value="Apply Coupon"/>

                                                            </div>

                                                            <input type="submit" class="button" name="update_cart"
                                                                   value="Update Cart"/>
                                                        </td>
                                                    </tr>

                                                    </tbody>
                                                </table>
                                            </div>


                                        </form>

                                        <div class="cart-collaterals">

                                            <div class="cart_totals ">
                                                <c:set var="totol1" value="0"/>
                                                <c:set var="totalCartFull" value="0"/>
                                                <c:forEach var="item" items="${sessionScope.listCart}">
                                                    <c:set var="totol1" value="${totol1+ item.price * item.repository}"/>
                                                    <c:set var="totalCartFull" value="${totalCartFull+1}"/>
                                                </c:forEach>
                                                <fmt:formatNumber var="totol" type = "number"
                                                                  maxFractionDigits = "0"       value = "${totol1}" />
                                                <h2>Cart totals</h2>

                                                <table cellspacing="0" class="shop_table shop_table_responsive">

                                                    <tr class="cart-subtotal">
                                                        <th>Subtotal</th>
                                                        <td data-title="Subtotal"><span
                                                                class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol"></span>${totol}</span>
                                                            VND
                                                        </td>
                                                    </tr>


                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td data-title="Total"><strong><span
                                                                class="woocommerce-Price-amount amount"><span
                                                                class="woocommerce-Price-currencySymbol"></span>${totol}</span>
                                                            VND</strong>
                                                        </td>
                                                    </tr>


                                                </table>

                                                <div class="wc-proceed-to-checkout">


                                                    <c:choose>

                                                        <c:when test="${pageContext.request.userPrincipal.name !=null}">
                                                            <a href="/account/ShowListAddressChoose"
                                                               class="checkout-button button alt wc-forward">
                                                                Proceed to checkout</a>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <a href="/checkout.html" class="checkout-button button alt wc-forward">
                                                                Proceed to checkout</a>
                                                        </c:otherwise>
                                                    </c:choose>

                                                </div>


                                            </div>

                                        </div>
                                    </c:otherwise>
                                </c:choose>


                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>


        <jsp:include page="/jsp/layout/footer.jsp"/>
    </div>
    <jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>

</body>
</html>
