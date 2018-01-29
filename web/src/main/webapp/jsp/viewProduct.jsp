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
                                                          action="http://wpsparrow.com/wordpress/ismiler/">
                                                        <label class="screen-reader-text"
                                                               for="woocommerce-product-search-field-0">Search
                                                            for:</label>
                                                        <input type="search" id="woocommerce-product-search-field-0"
                                                               class="search-field"
                                                               placeholder="Search products&hellip;" value="" name="s"/>
                                                        <input type="submit" value="Search"/>
                                                        <input type="hidden" name="post_type" value="product"/>
                                                    </form>
                                                </div>
                                                <div id="woocommerce_product_categories-2"
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
                                                </div>
                                                <div id="woocommerce_top_rated_products-2"
                                                     class="woocommerce widget_top_rated_products accordion-l-box wow fadeInUp enable-accordion"
                                                     data-active="0" data-collapsible="true"
                                                     data-height-style="content"><h3 class="accordion-header-mod"><span
                                                        class="heading-line title-accordion-menu-item">Top Rated Products</span><span
                                                        class="accordion-icon"></span></h3>
                                                    <ul class="product_list_widget">
                                                        <li>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/ludum-mutavit/">
                                                                <img width="170" height="150"
                                                                     src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-170x150.jpg"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt=""/> <span class="product-title">Apple iPhone 6s Plus</span>
                                                            </a>
                                                            <div class="star-rating"><span
                                                                    style="width:90%">Rated <strong
                                                                    class="rating">4.50</strong> out of 5</span></div>
                                                            <del><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>600.00</span>
                                                            </del>
                                                            <ins><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>560.00</span>
                                                            </ins>
                                                        </li>

                                                        <li>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/samsung-galaxy-s5/">
                                                                <img width="170" height="150"
                                                                     src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_-170x150.jpg"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt=""/> <span class="product-title">Samsung Galaxy S5</span>
                                                            </a>
                                                            <div class="star-rating"><span
                                                                    style="width:90%">Rated <strong
                                                                    class="rating">4.50</strong> out of 5</span></div>
                                                            <span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>875.00</span>
                                                        </li>

                                                        <li>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/lg-optimus-zone/">
                                                                <img width="170" height="150"
                                                                     src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-170x150.jpg"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt=""/> <span class="product-title">LG Optimus Zone</span>
                                                            </a>
                                                            <span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>456.00</span>
                                                        </li>

                                                        <li>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/orbic-slim/">
                                                                <img width="170" height="150"
                                                                     src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/revslider/home1/s3-3-170x150.png"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt=""/> <span
                                                                    class="product-title">ORBIC SLIM</span>
                                                            </a>
                                                            <del><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>456.00</span>
                                                            </del>
                                                            <ins><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>451.00</span>
                                                            </ins>
                                                        </li>

                                                        <li>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/orbic-slim-factory-unlocked-phone/">
                                                                <img width="170" height="150"
                                                                     src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/61i0BmiRATL._SX522_-170x150.jpg"
                                                                     class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
                                                                     alt=""/> <span
                                                                    class="product-title">Orbic Slim</span>
                                                            </a>
                                                            <del><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>600.00</span>
                                                            </del>
                                                            <ins><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol">&pound;</span>456.00</span>
                                                            </ins>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div id="woocommerce_product_tag_cloud-2"
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
                                                </div>
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
                                                                                                  src="${product.IMG}"
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
                                                                    <p class="product-price"><span
                                                                            class="woocommerce-Price-amount amount"><span
                                                                            class="woocommerce-Price-currencySymbol">&pound;</span>${product.price}</span>
                                                                    </p>

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
                                                                <form class="cart" method="post"
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

                                                                    <input type="hidden" name="add-to-cart"
                                                                           value="2977"/>

                                                                    <div class="detail-buttons clearfix">
                                                                        <div class="add-buttons">
                                                                            <a type="button"
                                                                               class="btn btn-add btn-add-compare"><i
                                                                                    class="fa fa-refresh"></i></a>

                                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                                                               type="button"
                                                                               class="btn btn-add btn-add-wish"><i
                                                                                    class="fa fa-heart-o"></i></a>
                                                                        </div>
                                                                        <div class="cart-add-buttons">
                                                                            <button type="submit"
                                                                                    class="btn btn-cart-color2">Add to
                                                                                cart
                                                                            </button>
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
                                                           data-toggle="tab" aria-expanded="true">Reviews (0)</a>
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


                                                                <p class="woocommerce-noreviews">There are no reviews
                                                                    yet.</p>

                                                            </div>
                                                            <div id="review_form_wrapper">
                                                                <div id="review_form">
                                                                    <div id="respond" class="comment-respond">
                                                                        <span id="reply-title"
                                                                              class="comment-reply-title">Be the first to review &ldquo;BLU VIVO 5 Smartphone&rdquo; <small><a
                                                                                rel="nofollow"
                                                                                id="cancel-comment-reply-link"
                                                                                href="/wordpress/ismiler/product/blu-vivo-5-smartphone/#respond"
                                                                                style="display:none;">Cancel reply</a></small></span>
                                                                        <form action="http://wpsparrow.com/wordpress/ismiler/wp-comments-post.php"
                                                                              method="post" id="commentform"
                                                                              class="comment-form">
                                                                            <p class="comment-notes"><span
                                                                                    id="email-notes">Your email address will not be published.</span>
                                                                                Required fields are marked <span
                                                                                        class="required">*</span></p>
                                                                            <div class="comment-form-rating"><label
                                                                                    for="rating">Your
                                                                                rating</label><select name="rating"
                                                                                                      id="rating"
                                                                                                      aria-required="true"
                                                                                                      required>
                                                                                <option value="">Rate&hellip;</option>
                                                                                <option value="5">Perfect</option>
                                                                                <option value="4">Good</option>
                                                                                <option value="3">Average</option>
                                                                                <option value="2">Not that bad</option>
                                                                                <option value="1">Very poor</option>
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
                                                                                <input id="author" name="author"
                                                                                       type="text" value="" size="30"
                                                                                       aria-required="true" required/>
                                                                            </p>
                                                                            <p class="comment-form-email"><label
                                                                                    for="email">Email <span
                                                                                    class="required">*</span></label>
                                                                                <input id="email" name="email"
                                                                                       type="email" value="" size="30"
                                                                                       aria-required="true" required/>
                                                                            </p>
                                                                            <p class="form-submit"><input name="submit"
                                                                                                          type="submit"
                                                                                                          id="submit"
                                                                                                          class="submit"
                                                                                                          value="Submit"/>
                                                                                <input type='hidden'
                                                                                       name='comment_post_ID'
                                                                                       value='2977'
                                                                                       id='comment_post_ID'/>
                                                                                <input type='hidden'
                                                                                       name='comment_parent'
                                                                                       id='comment_parent' value='0'/>
                                                                            </p></form>
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


                                                <a href="http://wpsparrow.com/wordpress/ismiler/product/moto-g-plus-4th-gen/">


                                                    <img width="470" height="450"
                                                         src="${items.IMG}"
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

	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&pound;</span>${items.price}</span></span>
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

                                                </div>


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


                                                    <a href="/wordpress/ismiler/product/blu-vivo-5-smartphone/?add-to-cart=2975"
                                                       rel="nofollow" data-product_id="2975" data-product_sku=""
                                                       data-quantity="1" class="btn btn-add btn-add-cart"> <i
                                                            class="fa fa-shopping-bag"></i>
                                                    </a>

                                                    <div class="cart-add-buttons">

                                                        <a href="/wordpress/ismiler/product/blu-vivo-5-smartphone/?add-to-cart=2975"
                                                           rel="nofollow" data-product_id="2975" data-product_sku=""
                                                           data-quantity="1" class="btn "> <i
                                                                class="fa fa-shopping-cart"></i> add to cart</a>
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


        <jsp:include page="/jsp/layout/footer.jsp"/>
    </div>
    <jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
