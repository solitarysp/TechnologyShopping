<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="totol" value="0"/>
<c:set var="totalCartFull" value="0"/>
<c:forEach var="item" items="${sessionScope.listCart}">
    <c:set var="totol" value="${totol+ item.price * item.repository}"/>
    <c:set var="totalCartFull" value="${totalCartFull+1}"/>
</c:forEach>
<fmt:formatNumber var="totol1" type="number"
                  maxFractionDigits="0" value="${totol}"/>
<div id="carshow" class="b-cart pull-right">
    <button id="cart" class="btn btn-default-color1 btn-sm">
                            <span class="price"><i class="fa fa-shopping-bag"></i><span
                                    class="woocommerce-Price-amount amount"><span
                                    class="woocommerce-Price-currencySymbol"></span>${totol1}</span> $</span>
        <span class="counter-wrapper"><span class="counter">${totalCartFull}</span></span>

    </button>


    <div class="cart-products">
        <div class="c-holder">
            <h3 class="title">
                my shopping cart </h3>
            <ul class="products-list list-unstyled">

                <li>
                    <c:forEach var="item" items="${sessionScope.listCart}">


                        <div class="b-cart-table ">
                            <a href="/viewProduct.html?id=${item.id}"
                               class="image">
                                <img width="170" height="150"
                                     src="/admin/images/${item.IMG}"
                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                     alt=""/> </a>

                            <div class="caption">
                                <a class="product-name"
                                   href="/viewProduct.html?id=${item.id}">${item.name}</a>
                                <span class="product-price">${item.repository} x <span
                                        class="woocommerce-Price-amount amount"><span
                                        class="woocommerce-Price-currencySymbol"> </span>${item.price}</span></span>

                            </div>
                            <a href="/delCartItem?id=${item.id}"
                               class="btn btn-remove" title="Remove this item"><i
                                    class="fa fa-trash fa-lg"></i></a>
                        </div>


                    </c:forEach>

                </li>

                <li>
                    <div class="products-subtotal text-right">
                        Subtotal <span class="subtotal-price"><span
                            class="woocommerce-Price-amount amount"><span
                            class="woocommerce-Price-currencySymbol"></span>${totol1} $</span></span>
                    </div>
                </li>
            </ul>
            <div class="products-buttons text-center">
                <a href="/cart.html" class="btn btn-default-color1 btn-sm">view cart</a>

                <c:choose>

                    <c:when test="${pageContext.request.userPrincipal.name !=null}">
                        <a href="/account/ShowListAddressChoose"
                           class="btn btn-primary-color2 btn-sm">Checkout</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/checkout.html" class="btn btn-primary-color2 btn-sm">Checkout</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>


</div>