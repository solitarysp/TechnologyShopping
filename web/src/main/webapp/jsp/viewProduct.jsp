<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tungct
  Date: 1/23/18
  Time: 6:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/jsp/layout/header.jsp"/>
    <link href="../resources/wp-content/themes/ismiler/assets/woocommerce/css/woocommerce.css" type="text/css" rel="stylesheet">
</head>

<body class="home page-template-default page page-id-2603 animated-css layout-switch home-construction-v2 primary-menu-not-active wpb-js-composer js-comp-ver-5.2.1 vc_responsive"
      data-scrolling-animations="false" data-header="fixed-header">
<!-- Loader -->
<div id="page-preloader"><span class="spinner"></span></div>
<!-- Loader end -->
<div class="sp-body">
    <div class="b-page">
        <jsp:include page="/jsp/layout/nav-header.jsp"/>
        <c:set var="product" value="${product}"/>

        <div class="b-page-header custom-7bg-">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">${product.name}</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled">
                                <li class="font-additional font-weight-normal color-main text-uppercase"><a href="/"
                                                                                                            class="color-main">Home</a>
                                </li>
                                <li class="font-additional font-weight-normal color-main text-uppercase"><a
                                        class="color-main">Product</a></li>
                                <li class="font-additional font-weight-normal color-main text-uppercase">${product.name}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <main id="main" class="section">

            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">


                        <div itemscope itemtype="<br />
<b>Notice</b>:  woocommerce_get_product_schema is <strong>deprecated</strong> since version 3.0 with no alternative available. in <b>/var/www/zaymund/data/www/wpsparrow.com/wordpress/ismiler/wp-includes/functions.php</b> on line <b>3835</b><br />
http://schema.org/Product" id="product-2977" class="product-sidebar-left ">

                            <section id="productDetails" class="product-details ">
                                <div class="container">
                                    <div class="row">

                                        <div class="product-brand col-lg-3 col-md-3 col-sm-12 col-xs-12 clearfix">
                                            <aside class="sidebar">
                                                <div id="woocommerce_product_search-2"
                                                     class="woocommerce widget_product_search accordion-l-box wow fadeInUp enable-accordion"
                                                     data-active="0" data-collapsible="true"
                                                     data-height-style="content"><h3 class="accordion-header-mod"><span
                                                        class="heading-line title-accordion-menu-item">Search Product</span><span
                                                        class="accordion-icon"></span></h3>
                                                    <form role="search" method="get" class="woocommerce-product-search"
                                                          action="/search">
                                                        <label class="screen-reader-text"
                                                               for="woocommerce-product-search-field-0">Search
                                                            for:</label>
                                                        <input type="search" id="woocommerce-product-search-field-0"
                                                               class="search-field"
                                                               placeholder="Search products…" value="${param.name}"
                                                               name="name">
                                                        <input hidden="hidden" type="text" placeholder="Type to search"
                                                               autocomplete="off"
                                                               name="page" value="1" id="page"
                                                               class="search-global__input">
                                                        <input type="submit" value="Search">

                                                    </form>
                                                </div>
                                                <%-- <div id="woocommerce_product_categories-2"
                                                      class="woocommerce widget_product_categories accordion-l-box wow fadeInUp enable-accordion"
                                                      data-active="0" data-collapsible="true"
                                                      data-height-style="content"><h3 class="accordion-header-mod"><span
                                                         class="heading-line title-accordion-menu-item">Product Categories</span><span
                                                         class="accordion-icon"></span></h3>
                                                     <ul class="product-categories">
                                                         <li class="cat-item cat-item-151 current-cat"><a
                                                                 href="http://wpsparrow.com/wordpress/ismiler/product-category/accessories/">Accessories</a>
                                                         </li>
                                                         <li class="cat-item cat-item-149"><a
                                                                 href="http://wpsparrow.com/wordpress/ismiler/product-category/carrier-phones/">Carrier
                                                             Phones</a></li>
                                                         <li class="cat-item cat-item-152"><a
                                                                 href="http://wpsparrow.com/wordpress/ismiler/product-category/cases/">Cases</a>
                                                         </li>
                                                         <li class="cat-item cat-item-150"><a
                                                                 href="http://wpsparrow.com/wordpress/ismiler/product-category/exclusive-phones/">Exclusive
                                                             Phones</a></li>
                                                         <li class="cat-item cat-item-153"><a
                                                                 href="http://wpsparrow.com/wordpress/ismiler/product-category/unlocked-phones/">Unlocked
                                                             Phones</a></li>
                                                     </ul>
                                                 </div>--%>
                                                <div id="woocommerce_top_rated_products-2"
                                                     class="woocommerce widget_top_rated_products accordion-l-box wow fadeInUp enable-accordion"
                                                     data-active="0" data-collapsible="true"
                                                     data-height-style="content"><h3 class="accordion-header-mod"><span
                                                        class="heading-line title-accordion-menu-item">TOP BEST SELLERS</span><span
                                                        class="accordion-icon"></span></h3>
                                                    <ul class="product_list_widget">
                                                        <c:forEach var="item" items="${productBestSellers}">
                                                            <li>
                                                                <a href="/viewProduct.html?id=${item.id}">
                                                                    <img width="170" height="150"
                                                                         src="admin/images/${item.IMG}"
                                                                         class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                         alt=""/> <span
                                                                        class="product-title">${item.name}</span>
                                                                </a><br>


                                                                <c:set var="test" value="1"/>
                                                                <c:forEach var="cate" items="${item.category}">
                                                                <c:if test="${cate.id==1}">
                                                                <del><span class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">&pound;</span>${item.price}</span>
                                                                </del>
                                                                <ins><span
                                                                        class="woocommerce-Price-amount amount"><span
                                                                        class="woocommerce-Price-currencySymbol">&pound;
                </span>${item.price - (item.price /100 * cate.value)}</span>
                                                                    <c:set var="test"/>
                                                                    </c:if>
                                                                    </c:forEach>
                                                                    <c:if test="${not empty test}">
                                                      <span
                                                              class="woocommerce-Price-amount amount"><span
                                                              class="woocommerce-Price-currencySymbol">&pound;
                                                                </span>${item.price}</span>
                                                                    </c:if>

                                                                    <c:set var="test" value="1"/>


                                                                </ins>


                                                            </li>


                                                        </c:forEach>

                                                    </ul>
                                                </div>
                                                <%--  <div id="woocommerce_product_tag_cloud-2"
                                                       class="woocommerce widget_product_tag_cloud accordion-l-box wow fadeInUp enable-accordion"
                                                       data-active="0" data-collapsible="true"
                                                       data-height-style="content"><h3 class="accordion-header-mod"><span
                                                          class="heading-line title-accordion-menu-item">Product Tags</span><span
                                                          class="accordion-icon"></span></h3>
                                                      <div class="tagcloud"><a
                                                              href="http://wpsparrow.com/wordpress/ismiler/product-tag/accessories/"
                                                              class="tag-cloud-link tag-link-164 tag-link-position-1"
                                                              style="font-size: 22pt;"
                                                              aria-label="accessories (8 products)">accessories</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/android/"
                                                             class="tag-cloud-link tag-link-157 tag-link-position-2"
                                                             style="font-size: 22pt;" aria-label="android (8 products)">android</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/apple/"
                                                             class="tag-cloud-link tag-link-156 tag-link-position-3"
                                                             style="font-size: 22pt;" aria-label="apple (8 products)">apple</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/cases/"
                                                             class="tag-cloud-link tag-link-165 tag-link-position-4"
                                                             style="font-size: 22pt;" aria-label="cases (8 products)">cases</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/iphone/"
                                                             class="tag-cloud-link tag-link-155 tag-link-position-5"
                                                             style="font-size: 22pt;" aria-label="iphone (8 products)">iphone</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/nexus/"
                                                             class="tag-cloud-link tag-link-162 tag-link-position-6"
                                                             style="font-size: 8pt;"
                                                             aria-label="nexus (1 product)">nexus</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/nokia/"
                                                             class="tag-cloud-link tag-link-159 tag-link-position-7"
                                                             style="font-size: 22pt;" aria-label="nokia (8 products)">nokia</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/premium/"
                                                             class="tag-cloud-link tag-link-163 tag-link-position-8"
                                                             style="font-size: 22pt;" aria-label="premium (8 products)">premium</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/samsung/"
                                                             class="tag-cloud-link tag-link-158 tag-link-position-9"
                                                             style="font-size: 11.876923076923pt;"
                                                             aria-label="samsung (2 products)">samsung</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/smart/"
                                                             class="tag-cloud-link tag-link-161 tag-link-position-10"
                                                             style="font-size: 22pt;" aria-label="smart (8 products)">smart</a>
                                                          <a href="http://wpsparrow.com/wordpress/ismiler/product-tag/unlocked/"
                                                             class="tag-cloud-link tag-link-166 tag-link-position-11"
                                                             style="font-size: 22pt;" aria-label="Unlocked (8 products)">Unlocked</a>
                                                      </div>
                                                  </div>--%>
                                            </aside>
                                        </div>

                                        <div class="col-xs-12 col-sm-12 product-sidebar-left col-md-9 col-lg-9">
                                            <div class="detail-title">
                                                <h3 class="heading-line">${product.name}</h3>
                                                <p>Brand : ${product.brand.name}</p>
                                            </div>

                                            <div class="row detail-main">
                                                <div class="col-sm-5  ">

                                                    <div id="image-block">
                                                        <div id="slider-product" class="flexslider">
                                                            <ul class="slides">

                                                                <li><a data-lighter href="#"><img width="470"
                                                                                                  height="450"
                                                                                                  src="admin/images/${product.IMG}"
                                                                                                  class="attachment-shop_single size-shop_single wp-post-image"
                                                                                                  alt=""
                                                                                                  title="81lZPI2hmoL._SX522_"/></a>
                                                                </li>
                                                                <li>

                                                                    <%--    <a   data-lighter  class="  "    href="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_.jpg" title="815gN9Ip-mL._SX522_" ><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_-470x450.jpg" class="attachment-shop_single size-shop_single" alt="" /></a></li><li>

                                                                        <a   data-lighter  class="  "    href="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_.jpg" title="81lZPI2hmoL._SX522_" ><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-470x450.jpg" class="attachment-shop_single size-shop_single" alt="" /></a></li><li>

                                                                        <a   data-lighter  class="  "    href="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61QfYbX8lwL._SX522_.jpg" title="61QfYbX8lwL._SX522_" ><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61QfYbX8lwL._SX522_-470x450.jpg" class="attachment-shop_single size-shop_single" alt="" /></a></li><li>

                                                                        <a   data-lighter  class="  "    href="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/71kr9vLUvWL._SX522_.jpg" title="71kr9vLUvWL._SX522_" ><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/71kr9vLUvWL._SX522_-470x450.jpg" class="attachment-shop_single size-shop_single" alt="" /></a></li><li>

                                                                        <a   data-lighter  class="  "    href="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61i0BmiRATL._SX522_.jpg" title="61i0BmiRATL._SX522_" ><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61i0BmiRATL._SX522_-470x450.jpg" class="attachment-shop_single size-shop_single" alt="" /></a></li>        </ul>
                                                     --%>
                                                        </div>

                                                        <%--
                                                                                                                <div id="carousel" class="flexslider">
                                                                                                                    <ul class="slides">
                                                                                                                        <li><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" title="81lZPI2hmoL._SX522_" /></li><li><a data-slide-index="1" href="#"><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" /></a></li><li><a data-slide-index="2" href="#"><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" /></a></li><li><a data-slide-index="3" href="#"><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61QfYbX8lwL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" /></a></li><li><a data-slide-index="4" href="#"><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/71kr9vLUvWL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" /></a></li><li><a data-slide-index="5" href="#"><img width="170" height="150" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61i0BmiRATL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" /></a></li></ul>
                                                                                                                </div>--%>

                                                    </div>
                                                </div>

                                                <div class="product-cart   col-sm-7  ">
                                                    <div class="detail-info pd1">

                                                        <div class="caption">
                                                            <div class="name-item">
                                                                <div itemprop="offers" class="card-price-block clearfix"
                                                                     itemscope itemtype="http://schema.org/Offer">
                                                                    <span class="price-title">Our price</span>
                                                                    <span style="font-size: 20px;" class="price">



          <c:set var="test" value="1"/>
    <c:forEach var="cate" items="${product.category}">
        <c:if test="${cate.id==1}">
    <del><span class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;</span>${product.price}</span></del> <ins><span
                                                                            style="color: red;margin-left: 5px;"
                                                                            class="woocommerce-Price-amount amount"><span
                                                                            class="woocommerce-Price-currencySymbol">&pound;
                </span>${product.price - (product.price /100 * cate.value)}</span>
         <c:set var="test"/>
        </c:if>
    </c:forEach>
<c:if test="${not empty test}">
    <span
            style="color: red;"
            class="woocommerce-Price-amount amount"><span

            class="woocommerce-Price-currencySymbol">&pound;
                </span>${product.price}</span>
</c:if>

          <c:set var="test" value="1"/>



    </span>

                                                                    <meta itemprop="price" content="875"/>
                                                                    <meta itemprop="priceCurrency" content="GBP"/>
                                                                    <link itemprop="availability"
                                                                          href="http://schema.org/InStock"/>
                                                                    <span class="product-availability instock pull-right">InStock</span>
                                                                </div>


                                                            </div> <!-- end name-item -->
                                                            <%--                 <div class="product-description">
                                                                                 <h6 class="heading-line">Product description</h6>
                                                                                 <div itemprop="description">
                                                                                     <p>${product.repository}</p>
                                                                                 </div>

                                                                             </div>--%>

                                                        </div> <!-- end caption -->

                                                        <div class="">

                                                            <div class="product-options_row">
                                                                <form action="/addCartItem" class="cart" method="get"
                                                                      enctype='multipart/form-data'>

                                                                    <div class="detail-qty-color">
                                                                        <div class="input-group spinner"
                                                                             data-trigger="spinner">
                                                                            <h6 class="heading-line">Quantity</h6>

                                                                            <input type="text" data-rule="quantity"
                                                                                   step="1" min="1" max=""
                                                                                   name="quantity" value="1" title="Qty"
                                                                                   class="input-text qty text" size="4"
                                                                                   pattern="[0-9]*"
                                                                                   inputmode="numeric"/>
                                                                            <div class="spinner-btn">
                                                                                <a class="btn btn-default"
                                                                                   href="javascript:;" data-spin="up"><i
                                                                                        class="fa fa-chevron-up"></i></a>
                                                                                <a class="btn btn-default"
                                                                                   href="javascript:;" data-spin="down"><i
                                                                                        class="fa fa-chevron-down"></i></a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <input hidden="hidden" name="id"
                                                                           value="${product.id}"/>
                                                                    <div class="detail-buttons clearfix">
                                                                        <%--  <div class="add-buttons">
                                                                              <a type="button"
                                                                                 class="btn btn-add btn-add-compare"><i
                                                                                      class="fa fa-refresh"></i></a>

                                                                              <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                                                                 type="button"
                                                                                 class="btn btn-add btn-add-wish"><i
                                                                                      class="fa fa-heart-o"></i></a>
                                                                          </div>--%>
                                                                        <div class="cart-add-buttons">
                                                                            <c:choose>
                                                                                <c:when test="${product.repository==0}">
                                                                                    <a onclick="function hethang() {
                                                                                     swal('Mặt hàng này đang cháy, chúng tôi đang hết hàng, xin thử lại sau!', 'ERROR!', 'error');
                                                                                    }
                                                                                    hethang()"
                                                                                       style="background-color: #dcdcdc;color: #0d0d0d"
                                                                                       class="btn btn-cart">
                                                                                        Add to
                                                                                        cart
                                                                                    </a>
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <button type="submit"
                                                                                            class="btn btn-cart-color2">
                                                                                        Add to
                                                                                        cart
                                                                                    </button>
                                                                                </c:otherwise>
                                                                            </c:choose>

                                                                        </div>
                                                                    </div>

                                                                </form>
                                                            </div>
                                                        </div>

                                                        <div class="yith-wcwl-add-to-wishlist add-to-wishlist-2977">
                                                            <div class="yith-wcwl-add-button show"
                                                                 style="display:block">


                                                                <%-- <a href="/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977" rel="nofollow" data-product-id="2977" data-product-type="simple" class="add_to_wishlist" >
                                                                     Add to Wishlist</a>--%>
                                                                <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/yith-woocommerce-wishlist/assets/images/wpspin_light.gif"
                                                                     class="ajax-loading" alt="loading" width="16"
                                                                     height="16" style="visibility:hidden"/>
                                                            </div>

                                                            <div class="yith-wcwl-wishlistaddedbrowse hide"
                                                                 style="display:none;">
                                                                <span class="feedback">Product added!</span>
                                                                <a href="http://wpsparrow.com/wordpress/ismiler/wishlist/"
                                                                   rel="nofollow">
                                                                    Browse Wishlist </a>
                                                            </div>

                                                            <div class="yith-wcwl-wishlistexistsbrowse hide"
                                                                 style="display:none">
                                                                <span class="feedback">The product is already in the wishlist!</span>
                                                                <a href="http://wpsparrow.com/wordpress/ismiler/wishlist/"
                                                                   rel="nofollow">
                                                                    Browse Wishlist </a>
                                                            </div>

                                                            <div style="clear:both"></div>
                                                            <div class="yith-wcwl-wishlistaddresponse"></div>

                                                        </div>

                                                        <div class="clear"></div>
                                                        <div class="product-options_footer">
                                                            <div class="product-options_row">


                                                                <h4 class="font-additional font-weight-bold text-uppercase">
                                                                    Categories</h4>
                                                                <ul class="tags-list">
                                                                    <li>

                                                                        <c:forEach var="ca" items="${product.category}">
                                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product-category/accessories/"
                                                                               rel="tag">${ca.name}</a>,
                                                                        </c:forEach>
                                                                    </li>
                                                                </ul>


                                                                <%--   <h4 class="font-additional font-weight-bold text-uppercase">
                                                                       Share</h4>
                                                                   <ul class="social-list">
                                                                       <li>
                                                                           <a class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"
                                                                              href="http://www.facebook.com/sharer.php?u=http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/&amp;images=http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-100x100.jpg"
                                                                              title="Facebook" target="_blank"><span
                                                                                   class="social_facebook"
                                                                                   aria-hidden="true"></span></a></li>
                                                                       <li>
                                                                           <a class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"
                                                                              href="https://twitter.com/share?url=http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/&text=BLU%20VIVO%205%20Smartphone"
                                                                              title="Twitter" target="_blank"><span
                                                                                   class="social_twitter"
                                                                                   aria-hidden="true"></span></a></li>
                                                                       <li>
                                                                           <a class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"
                                                                              href="http://plus.google.com/share?url=http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/&title=BLU%20VIVO%205%20Smartphone"
                                                                              title="Google +" target="_blank"><span
                                                                                   class="social_googleplus"
                                                                                   aria-hidden="true"></span></a></li>
                                                                       <li>
                                                                           <a class="hover-focus-border hover-focus-bg hvr-rectangle-out before-bg"
                                                                              href="http://pinterest.com/pin/create/button/?url=http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/&amp;media=http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-100x100.jpg&amp;description=BLU%20VIVO%205%20Smartphone"
                                                                              title="" target="_blank"><span
                                                                                   class="social_pinterest"
                                                                                   aria-hidden="true"></span></a></li>
                                                                   </ul>--%>


                                                            </div>
                                                        </div> <!-- product-options_footer end -->
                                                    </div>
                                                </div><!-- .summary -->
                                            </div>


                                            <div class="b-hr">
                                                <hr>
                                            </div>


                                            <div class="detail-tabs">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li class="description_tab active">
                                                        <a class="heading-line" href="#tab-description " role="tab"
                                                           data-toggle="tab" aria-expanded="true">Description</a>
                                                    </li>
                                                    <li class="reviews_tab ">
                                                        <a class="heading-line" href="#tab-reviews " role="tab"
                                                           data-toggle="tab" aria-expanded="true">Reviews
                                                            (${product.review.size()})</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane active" id="tab-description">
                                                        <p>${product.content}</p>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane " id="tab-reviews">
                                                        <div id="reviews" class="woocommerce-Reviews">
                                                            <div id="comments">
                                                                <h2 class="woocommerce-Reviews-title">Reviews</h2>
                                                                <c:choose>
                                                                    <c:when test="${product.review.size()>0}">
                                                                        <ol class="commentlist">
                                                                            <c:forEach items="${product.review}" var="rv">
                                                                                <li class="comment even thread-even depth-1"
                                                                                    id="li-comment-45">

                                                                                    <div id="comment-45"
                                                                                         class="comment_container">

                                                                                        <div class="comment-text">

                                                                                            <div class="star-rating"><span
                                                                                                    style="width:${rv.rating*20}%">${rv.customer.name} Rated <strong
                                                                                                    class="rating">${rv.rating}</strong> out of 5</span>
                                                                                            </div>

                                                                                            <div class="description"><p>
                                                                                                ${rv.comment}</p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li><!-- #comment-## -->
                                                                            </c:forEach>

                                                                        </ol>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <p class="woocommerce-noreviews">There are no
                                                                            reviews
                                                                            yet.</p>
                                                                    </c:otherwise>
                                                                </c:choose>

                                                            </div>
                                                            <div id="review_form_wrapper">
                                                                <div id="review_form">
                                                                    <div id="respond" class="comment-respond">
                                                                        <span id="reply-title"
                                                                              class="comment-reply-title">Be the first to review &ldquo;${product.name}&rdquo; <small><a
                                                                                rel="nofollow"
                                                                                id="cancel-comment-reply-link"

                                                                                style="display:none;">Cancel reply</a></small></span>
                                                                        <form   id="comment_form"                                                                              method="post" id="commentform"
                                                                                class="comment-form">
                                                                            <p class="comment-notes"><span
                                                                                    id="email-notes">Your email address will not be published.</span>
                                                                                Required fields are marked <span
                                                                                        class="required">*</span></p>
                                                                            <div class="comment-form-rating"><label
                                                                                    for="rating">Your
                                                                                rating</label><select required name="rating"
                                                                                                      id="rating"
                                                                                                      aria-required="true">
                                                                                <option value="">Rate&hellip;</option>
                                                                                <option value="5">Perfect(5*)</option>
                                                                                <option value="4">Good(4*)</option>
                                                                                <option value="3">Average(3*)</option>
                                                                                <option value="2">Not that bad(2*)</option>
                                                                                <option value="1">Very poor(1*)</option>
                                                                            </select></div>
                                                                            <p class="comment-form-comment"><label
                                                                                    for="comment">Your review <span
                                                                                    class="required">*</span></label><textarea
                                                                                    id="comment" name="comment"
                                                                                    cols="45" rows="8"
                                                                                    aria-required="true"
                                                                                    required></textarea></p>
                                                                            <p class="comment-form-author"><label
                                                                                    for="author">Name <span
                                                                                    class="required">*</span></label>
                                                                                <input disabled id="author" name="customer"
                                                                                       type="text" value="${customer.name}" size="30"
                                                                                       aria-required="true" required/>
                                                                            </p>
                                                                            <p class="comment-form-email"><label
                                                                                    for="email">Email <span
                                                                                    class="required">*</span></label>
                                                                                <input disabled id="email" name="email"
                                                                                       type="email" value="${customer.email}" size="30"
                                                                                       aria-required="true" required/>
                                                                            </p>

                                                                                <input name="idPro" value="${product.id}" hidden/>
                                                                                <%--<input type='hidden'--%>
                                                                                <%--name='comment_post_ID'--%>
                                                                                <%--value='2977'--%>
                                                                                <%--id='comment_post_ID'/>--%>
                                                                                <%--<input type='hidden'--%>
                                                                                <%--name='comment_parent'--%>
                                                                                <%--id='comment_parent' value='0'/>--%>
                                                                            </p></form>
                                                                        <p class="form-submit"><button id="submit" onclick="addCmt()" name="submit"

                                                                        >Submit</button>
                                                                            <br/><span id="noti"></span>
                                                                    </div><!-- #respond -->
                                                                </div>
                                                            </div>


                                                            <div class="clear"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>

                                    </div>
                                </div>
                            </section>


                            <div class="box-related">

                                <h3 class="heading-line-long">Users also bought</h3>

                                <div class="custom-nav-mod">
                                    <div class="slider-nav">
                                        <a class="slider-prev"><i class="fa fa-chevron-left"></i></a>
                                        <span class="nav-divider"></span>
                                        <a class="slider-next"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>


                                <ul id="detail-related" class="b-related enable-owl-carousel" data-loop="true"
                                    data-auto-width="false" data-dots="false" data-nav="false" data-margin="15"
                                    data-responsive-class="true"
                                    data-responsive='{"0":{"items":1},"479":{"items":2},"768":{"items":3},"1199":{"items":4}}'
                                    data-slider-next=".slider-next" data-slider-prev=".slider-prev">
                                    <c:set var="itemSale" value="${productList}"/>
                                    <c:forEach var="items" items="${itemSale}">

                                        <li class="col-sm-3 col-xs-6">
                                            <div class="first item-grid b-item-card post-2975 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-cases product_cat-exclusive-phones product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7  instock featured shipping-taxable purchasable product-type-simple">
                                                <div class="image">


                                                    <a href="/viewProduct.html?id=${items.id}">

                                                        <c:forEach var="cate" begin="0" end="1"
                                                                   items="${items.category}">
                                                            <%--    <c:if test="${cate.id==1}">
                                                                    <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                                    <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                                </c:if>--%>
                                                            <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                            <c:if test="${cate.value!=0}">
                                                                <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                            </c:if>
                                                        </c:forEach>
                                                        <img width="470" height="450"
                                                             src="admin/images/${items.IMG}"
                                                             class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                             alt=""/> </a>


                                                        <%--        <a class="slider_img"
                                                                   href="http://wpsparrow.com/wordpress/ismiler/product/moto-g-plus-4th-gen/"><img
                                                                        width="470" height="450"
                                                                        src="${items.IMG}"
                                                                        class="attachment-shop_catalog size-shop_catalog" alt=""/></a>--%>
                                                </div>
                                                <div class="card-info">
                                                    <div class="caption">
                                                        <div class="name-item">
                                                            <a class="product-name"
                                                               href="/viewProduct.html?id=${items.id}">${items.name}</a>
                                                        </div>
                                                        <span class="product-price card-price-block">
					<span class="price-title">Price</span>

	<span class="price">



          <c:set var="test" value="1"/>
    <c:forEach var="cate" items="${items.category}">
        <c:if test="${cate.id==1}">
    <del><span class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;</span>${items.price}</span></del> <ins><span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${items.price - (items.price /100 * cate.value)}</span>
         <c:set var="test"/>
        </c:if>
    </c:forEach>
<c:if test="${not empty test}">
    <span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${items.price}</span>
</c:if>

          <c:set var="test" value="1"/>



    </span>
                                                    <div class="rating">

                                                        <div class="star-rating"><span
                                                                style="width:59500%">Rated <strong
                                                                class="rating">2975</strong> out of 5</span></div>
                                                        <div class="add-review">
                                                            <span><span class="review-counter">0</span>Review(s)</span>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/moto-g-plus-4th-gen/#comments">Add
                                                                Your Review</a>
                                                        </div>
                                                    </div>

                                                    <div class="product-description">
                                                        <p>Ut enim ad minim veniam quis nostrud exercita tion ullamco
                                                            laboris nisi aliquip exa commodo consequat. Duis aute irure
                                                            dolor in reprehenderit in voluptate velit esse cillum dolore
                                                            eu fugiat nulla pariatur</p>
                                                    </div>

                                                    </span>


                                                        <div class="add-buttons">


                                                            <a href="/viewProduct.html?id=${items.id}"
                                                               class="btn btn-add btn-add-quickview">
                                                                <i class="fa fa-eye"></i>
                                                            </a>


                                                                <%--                  <a class="btn btn-add btn-add-compare"><i class="fa fa-refresh"></i></a>
                                                                                  <a href="http://wpsparrow.com/wordpress/ismiler/product/moto-g-plus-4th-gen/?add_to_wishlist=2975"
                                                                                     class="btn btn-add btn-add-wish">
                                                                                      <i class="fa fa-heart-o"></i>
                                                                                  </a>--%>


                                                            <a
                                                                    onclick="addCartByIdWithAjax('${items.id}')"
                                                                    rel="nofollow" data-product_id="2975"
                                                                    data-product_sku=""
                                                                    data-quantity="1" class="btn btn-add btn-add-cart">
                                                                <i
                                                                        class="fa fa-shopping-bag"></i>
                                                            </a>

                                                            <div class="cart-add-buttons">

                                                                <a onclick="addCartByIdWithAjax('${items.id}')"
                                                                   rel="nofollow" data-product_id="2975"
                                                                   data-product_sku=""
                                                                   data-quantity="1" class="btn "> <i
                                                                        class="fa fa-shopping-cart"></i> add to cart</a>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>


                                    </c:forEach>


                                </ul>

                            </div>


                            <meta itemprop="url"
                                  content="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/"/>

                        </div><!-- #product-2977 -->

                    </div>
                </div>
            </div>

        </main>
        <script type="text/javascript">
            function addCartItem() {

            }
        </script>

        <jsp:include page="/jsp/layout/footer.jsp"/>
    </div>
    <jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
<script type="text/javascript">
    function addCmt() {
        var content = document.getElementById('comment').value;
        var rate = document.getElementById('rating').value;
        if(content.length>0){
            if(rate.length>0){
                var data = $("#comment_form").serialize();
                $.ajax({
                    url: "addComment?${_csrf.parameterName}=${_csrf.token}",
                    type: "post",
                    dataType: "text",
                    data: data,
                    success: function (result) {
                        console.log(result == 'success');
                        if (result.trim() == 'success') {
                            $('#comment_form')[0].reset();
                            $("ol").append("<li class='comment even thread-even depth-1' id='li-comment-45'><div id='comment-45' class='comment_container'><div class='comment-text'><div class='star-rating'><span style='width:"+rate*20+"%'>${rv.customer.name} Rated <strong class='rating'>"+rate+"</strong> out of 5</span></div><div class='description'><p>"+content+"</p></div></div></div></li>");
                        }
                    },
                    complete: function (xhr, textStatus) {
                        if (xhr.status == 403) {
                            $('#result').html("Bạn không có quyền xem");
                            $('#stt').html("Bạn không có quyền xem");
                        }
                    }
                });
            }else {
                alert('You do not rate this product');
            }
        }else {

            alert('You do not fill in the comment box');
        }

    }

</script>
<style>
    ol{
    margin-top: 40px;
    margin-bottom: 10px;
    margin-left: 10px;}
</style>
</body>
</html>
