<%@ page import="com.fpt.entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<header>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <div class="b-top-line ">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 clearfix">
                    <div class="b-top-options pull-left">
                        <div class="nav">
                            <ul class="list-inline">
                                <li class="dropdown">
                                    <div class="btn-group">
                                        <ul id="menu-top-navigation-menu"
                                            class="nav navbar-nav navbar-main list-inline">
                                            <form action="/j_spring_security_logout" method="post" id="logoutForm">
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                       value="${_csrf.token}"/>
                                            </form>
                                            <c:choose>
                                                <c:when test="${not empty pageContext.request.userPrincipal.name}">
                                                    <li id="menu-item-2859"
                                                        class="fa fa-angle-down menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2859 dropdown">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/my-account/">My
                                                            Account</a>
                                                        <div class="b-all-homes">
                                                            <ul class="list-unstyled">
                                                                <li id="menu-item-3219"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3219">
                                                                    <a href="/account/listAddress">List Address</a>
                                                                </li>
                                                                <li id="menu-item-2860"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2860">
                                                                    <c:choose>

                                                                        <c:when test="${pageContext.request.userPrincipal.name !=null}">
                                                                            <a href="/account/ShowListAddressChoose"
                                                                            >Checkout</a>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <a href="/checkout.html"
                                                                               class="btn btn-primary-color2 btn-sm">Checkout</a>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </li>
                                                                <li id="menu-item-2861"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2861">
                                                                    <a href="/cart.html">Cart</a>
                                                                </li>
                                                                <li id="menu-item-3220"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3220">
                                                                    <a href="http://wpsparrow.com/wordpress/ismiler/delivery-information/">Information</a>
                                                                </li>
                                                                <li id="menu-item-3217"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3217">
                                                                    <a href="http://wpsparrow.com/wordpress/ismiler/return-policy/">Return
                                                                        Policy</a></li>
                                                                <li id="menu-item-3218"
                                                                    class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3218">
                                                                    <a href="javascript:formSubmit()">LogOut</a></li>

                                                            </ul>
                                                        </div>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="/login.html">Login</a>
                                                    <a style="margin-left: 10px;" href="/registration">Registration</a>
                                                </c:otherwise>
                                            </c:choose>


                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="b-top-info pull-right">
                        <div class="nav">
                            <ul class="list-inline">
                                <li>
                                    <span><i class="fa fa-phone"></i>345-3534-346</span>
                                </li>
                                <li>
                                    <span><i class="fa fa-envelope-o"></i>info@domain.com</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="b-header-main style-2">
        <div class="container">
            <div class="row">
                <div class="col-xs-6 col-sm-2 col-md-2 col-lg-2">
                    <div class="b-logo">


                        <a href="/">
                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/logo-w.png"
                                 alt=""/>
                        </a>

                    </div>
                </div>
                <div id="toggle-nav" class="col-xs-12 col-sm-10 col-md-8 col-lg-8 menu-wrapper clearfix">
                    <div class="toggle-nav-btn">
                        <button class="btn btn-menu"><i class="fa fa-bars fa-lg"></i></button>
                    </div>
                    <div class="b-header-menu pull-right">

                        <ul id="main-menu" class="nav navbar-nav navbar-main list-inline">
                            <li id="menu-item-2872"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2874"><a
                                    href="/">HOME</a></li>

                            <li id="menu-item-2873"
                                class="full-width all-menu-open menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2873 dropdown">
                                <a href="http://wpsparrow.com/wordpress/ismiler/shop/">shop</a>
                                <div class="b-all-homes">
                                    <ul class="list-unstyled">
                                        <li id="menu-item-3009"
                                            class="full-width menu-item menu-item-type-post_type menu-item-object-staticblocks menu-item-3009 all-menu-open">
                                            <div class="vc_row_anchor js_stretch_anchor"></div>
                                            <div class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled">
                                                <div class="wpb_column vc_column_container vc_col-sm-6">
                                                    <div class="vc_column-inner ">
                                                        <div class="wpb_wrapper">
                                                            <div class="vc_row wpb_row vc_inner vc_row-fluid">
                                                                <div class="wpb_column vc_column_container vc_col-sm-8">
                                                                    <div class="vc_column-inner ">
                                                                        <div class="wpb_wrapper">
                                                                            <div class="wpb_single_image wpb_content_element vc_align_left">

                                                                                <figure class="wpb_wrapper vc_figure">
                                                                                    <div class="vc_single_image-wrapper   vc_box_border_grey">
                                                                                        <img width="360" height="300"
                                                                                             src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu1.jpg"
                                                                                             class="vc_single_image-img attachment-full"
                                                                                             alt=""
                                                                                             srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu1.jpg 360w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu1-300x250.jpg 300w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu1-72x60.jpg 72w"
                                                                                             sizes="(max-width: 360px) 100vw, 360px"/>
                                                                                    </div>
                                                                                </figure>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="kswr-column-settings" data-minheight="0px"
                                                                     data-isminheight="off"
                                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                                <div class="wpb_column vc_column_container vc_col-sm-4">
                                                                    <div class="vc_column-inner ">
                                                                        <div class="wpb_wrapper"><h4
                                                                                class="footer-top_title color-main font-additional font-weight-bold text-uppercase">
                                                                            FEATURED PHONES</h4>
                                                                            <div class="footer-top_container clearfix">

                                                                                <ul>
                                                                                    <li><a href="shop">GALAXY S
                                                                                        SERIES</a></li>
                                                                                    <li><a href="shop">GALAXY NOTE
                                                                                        SERIES</a></li>
                                                                                    <li><a href="shop">APPLE IPHONE</a>
                                                                                    </li>
                                                                                    <li><a href="shop">SONY XPERIA
                                                                                        SERIES</a></li>
                                                                                </ul>
                                                                            </div>
                                                                            <h4 class="footer-top_title color-main font-additional font-weight-bold text-uppercase">
                                                                                OPERATING SYSTEM</h4>
                                                                            <div class="footer-top_container clearfix">

                                                                                <ul>
                                                                                    <li><a href="shop"> GOOGLE ANDROID
                                                                                    </a></li>
                                                                                    <li><a href="shop">APPLE IOS</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="kswr-column-settings" data-minheight="0px"
                                                                     data-isminheight="off"
                                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                            </div>
                                                            <div class="kswr-row-element-back"
                                                                 data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="kswr-column-settings" data-minheight="0px"
                                                     data-isminheight="off"
                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                <div class="wpb_column vc_column_container vc_col-sm-6">
                                                    <div class="vc_column-inner ">
                                                        <div class="wpb_wrapper">
                                                            <div class="vc_row wpb_row vc_inner vc_row-fluid">
                                                                <div class="wpb_column vc_column_container vc_col-sm-6">
                                                                    <div class="vc_column-inner ">
                                                                        <div class="wpb_wrapper"><h4
                                                                                class="footer-top_title color-main font-additional font-weight-bold text-uppercase">
                                                                            POPULAR BRANDS</h4>
                                                                            <div class="footer-top_container clearfix">

                                                                                <ul>
                                                                                    <li><a href="shop">APPLE IPHONE</a>
                                                                                    </li>
                                                                                    <li><a href="shop">SAMSUNG</a></li>
                                                                                    <li><a href="shop">HTC</a></li>
                                                                                    <li><a href="shop">MICROSOFT /
                                                                                        NOKIA</a></li>
                                                                                    <li><a href="shop">HUAWEI</a></li>
                                                                                    <li><a href="shop">MOTOROLA</a></li>
                                                                                    <li><a href="shop">LG
                                                                                        ELECTRONICS</a></li>
                                                                                    <li><a href="shop">BLACKBERRY</a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="kswr-column-settings" data-minheight="0px"
                                                                     data-isminheight="off"
                                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                                <div class="wpb_column vc_column_container vc_col-sm-6">
                                                                    <div class="vc_column-inner ">
                                                                        <div class="wpb_wrapper"><h4
                                                                                class="footer-top_title color-main font-additional font-weight-bold text-uppercase">
                                                                            POPULAR BRANDS</h4>
                                                                            <div class="footer-top_container clearfix">

                                                                                <ul>
                                                                                    <li><a href="shop">HOT DEALS</a>
                                                                                    </li>
                                                                                    <li><a href="shop">LATEST
                                                                                        PRODUCTS</a></li>
                                                                                    <li><a href="shop">CLEARANCE
                                                                                        SALE</a></li>
                                                                                </ul>
                                                                            </div>
                                                                            <div class="wpb_single_image wpb_content_element vc_align_left">

                                                                                <figure class="wpb_wrapper vc_figure">
                                                                                    <div class="vc_single_image-wrapper   vc_box_border_grey">
                                                                                        <img width="190" height="142"
                                                                                             src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu2.jpg"
                                                                                             class="vc_single_image-img attachment-full"
                                                                                             alt=""
                                                                                             srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu2.jpg 190w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/10/all-menu2-80x60.jpg 80w"
                                                                                             sizes="(max-width: 190px) 100vw, 190px"/>
                                                                                    </div>
                                                                                </figure>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="kswr-column-settings" data-minheight="0px"
                                                                     data-isminheight="off"
                                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                            </div>
                                                            <div class="kswr-row-element-back"
                                                                 data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="kswr-column-settings" data-minheight="0px"
                                                     data-isminheight="off"
                                                     data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                            </div>
                                            <div class="kswr-row-element-back"
                                                 data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li id="menu-item-2875"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2875 dropdown">
                                <a href="http://wpsparrow.com/wordpress/ismiler/pages/">Pages</a>
                                <div class="b-all-homes">
                                    <ul class="list-unstyled">
                                        <li id="menu-item-3061"
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-3061 dropdown">
                                            <a href="http://wpsparrow.com/wordpress/ismiler/delivery-information/">Information</a>
                                            <div class="b-all-homes">
                                                <ul class="list-unstyled">
                                                    <li id="menu-item-3064"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3064">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/delivery-information/">Delivery
                                                            Information</a></li>
                                                    <li id="menu-item-3062"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3062">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/return-policy/">Return
                                                            Policy</a></li>
                                                    <li id="menu-item-3063"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3063">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/terms-conditions/">Terms
                                                            Conditions</a></li>
                                                    <li id="menu-item-3067"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3067">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/typography/">Typography</a>
                                                    </li>
                                                    <li id="menu-item-3069"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3069">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/thank-you-for-subscribe/">Thank
                                                            you</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li id="menu-item-2876"
                                            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2876 dropdown">
                                            <a href="http://wpsparrow.com/wordpress/ismiler/pages/custom-buttons/">Featured</a>
                                            <div class="b-all-homes">
                                                <ul class="list-unstyled">
                                                    <li id="menu-item-3065"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-3065">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/pages/custom-buttons/">Custom
                                                            buttons</a></li>
                                                    <li id="menu-item-2878"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2878">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/pages/tabs-toggles/">Tabs
                                                            / Toggles</a></li>
                                                    <li id="menu-item-2879"
                                                        class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2879">
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/pages/pie-charts/">Pie
                                                            Charts</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li id="menu-item-2869"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2869"><a
                                    href="http://wpsparrow.com/wordpress/ismiler/blog/">Blog</a></li>
                            <li id="menu-item-2874"
                                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2874"><a
                                    href="http://wpsparrow.com/wordpress/ismiler/contacts/">Contacts</a></li>
                        </ul>


                        <div class="header-search-icon"><a class="btn_header_search" href="#"><i
                                class="fa fa-search"></i></a></div>


                        <div class="header-search">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
                                        <div class="navbar-search">
                                            <form action="/search" method="get"
                                                  id="search-global-form" class="search-global">
                                                <input type="text" placeholder="Type to search" autocomplete="off"
                                                       name="name" value="" id="name" class="search-global__input">
                                                <input hidden="hidden" type="text" placeholder="Type to search"
                                                       autocomplete="off"
                                                       name="page" value="1" id="page" class="search-global__input">
                                                <button class="search-global__btn"><i class="fa fa-search"></i></button>
                                                <div class="search-global__note">Begin typing your search above and
                                                    press return to search.
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="button" class="search-close search-form_close close"><i
                                    class="fa fa-times"></i></button>
                        </div>

                    </div>


                </div>
                <%--<%--%>
                    <%--int totalCart = 0;--%>
                    <%--float totalPrice = 0;--%>
                <%--%>--%>
                <%--<c:if test="${not empty sessionScope['listCart']}">--%>
                    <%--<%--%>
                        <%--ArrayList<Product> listCart = (ArrayList<Product>) session.getAttribute("listCart");--%>
                        <%--totalCart = listCart.size();--%>
                        <%--for (Product p : listCart) {--%>
                            <%--float price = p.getPrice();--%>
                            <%--int quantity = p.getRepository();--%>
                            <%--float total = price * quantity;--%>
                            <%--totalPrice = +total;--%>
                        <%--}--%>
                    <%--%>--%>
                <%--</c:if>--%>
                <c:set var="totol" value="0"/>
                <c:set var="totalCartFull" value="0"/>
                <c:forEach var="item" items="${sessionScope.listCart}">
                    <c:set var="totol" value="${totol+ item.price * item.repository}"/>
                    <c:set var="totalCartFull" value="${totalCartFull+1}"/>
                </c:forEach>
                <div id="cart-wrapper" class="col-xs-6 col-sm-12 col-md-2 col-lg-2">
                    <div id="carshow" class="b-cart pull-right">
                        <button id="cart" class="btn btn-default-color1 btn-sm">
                            <span class="price"><i class="fa fa-shopping-bag"></i>
                                <span
                                    class="woocommerce-Price-amount amount">
                                <span
                                    class="woocommerce-Price-currencySymbol"></span><fmt:formatNumber type="number" pattern="$ ###.##" value="${totol}" />
                            </span>
                            <span class="counter-wrapper"><span class="counter">${totalCartFull}</span></span>
                            </span>
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
                                                            class="woocommerce-Price-currencySymbol"> </span><fmt:formatNumber type="number" pattern="$ ###.##" value="${item.price * item.repository}" /></span></span>

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
                                                class="woocommerce-Price-currencySymbol"></span><fmt:formatNumber type="number" pattern="$ ###.##" value="${totol}" /></span></span>
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
                </div>


            </div>
        </div>
    </div>
    <script type="text/javascript">
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }

        function addCartByIdWithAjax(id) {
            var data = {'id': id};
            $.ajax({
                url: "addCartItemAjax",
                type: "GET",
                dataType: "text",
                data: data,
                success: function (result) {
                    if (result.trim() == 'hethang') {
                        swal("Mặt hàng này đang cháy, chúng tôi đang hết hàng, xin thử lại sau!", "ERROR!", "error");

                    } else {
                        $('#carshow').html(result);
                        swal("Thành công!", "Thêm giỏ hàng thành công!", "success");
                    }

                },
            });
        }
    </script>
</header>