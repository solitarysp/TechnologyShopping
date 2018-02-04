<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chi Can Em
  Date: 28-01-2018
  Time: 19:30
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

<%--set value từ java về để view dữ liệu--%>

<c:set var="products" value="${products}"/>
<c:set var="count" value="${count}"/>

<div class="sp-body">
    <div class="b-page">
        <jsp:include page="/jsp/layout/nav-header.jsp"/>
        <div style="margin-left: 30px;margin-right: 30px;" class="woocommerce">


            <div class="row">


                <div class="col-xs-12 col-sm-5 col-md-3">
                    <aside class="sidebar ">
                        <div id="woocommerce_product_search-3"
                             class="woocommerce widget_product_search accordion-l-box wow fadeInUp enable-accordion"
                             data-active="0" data-collapsible="true" data-height-style="content"><h3
                                class="accordion-header-mod"><span class="heading-line title-accordion-menu-item">Product Search</span><span
                                class="accordion-icon"></span></h3>
                            <form role="search" method="get" class="woocommerce-product-search"
                                  action="/search">
                                <label class="screen-reader-text" for="woocommerce-product-search-field-0">Search
                                    for:</label>
                                <input type="search" id="woocommerce-product-search-field-0" class="search-field"
                                       placeholder="Search products…" value="${param.name}" name="name">
                                <input hidden="hidden" type="text" placeholder="Type to search" autocomplete="off"
                                       name="page" value="1" id="page" class="search-global__input">
                                <input type="submit" value="Search">

                            </form>


                            <div class="product-sidebar-block sidebar-product"></div>
                        </div>
                        <div id="woocommerce_product_tag_cloud-3"
                             class="woocommerce widget_product_tag_cloud accordion-l-box wow fadeInUp enable-accordion"
                             data-active="0" data-collapsible="true" data-height-style="content"><h3
                                class="accordion-header-mod"></h3>


                        </div>
                    </aside>
                </div>

                <div class="col-xs-12  col-sm-12 col-md-9 ">


                    <div class="  clearfix b-grid row ">
                        <ul class="products-grid ">


                            <c:forEach var="item" items="${products}">

                                <li class="col-sm-4 col-xs-6">
                                    <div class="item-grid b-item-card post-2977 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-carrier-phones product_cat-cases product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7 last instock featured shipping-taxable purchasable product-type-simple">
                                        <div class="image">

                                            <a href="/viewProduct.html?id=${item.id}">

                                                <c:forEach var="cate" begin="0" end="1" items="${item.category}">
                                                    <%--    <c:if test="${cate.id==1}">
                                                            <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                            <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                        </c:if>--%>
                                                    <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                    <c:if test="${cate.value!=0}">
                                                        <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                    </c:if>
                                                </c:forEach>
                                                <img width="470" height="450" src="admin/images/${item.IMG}"
                                                     class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                     alt=""> </a>


                                                <%--  <a class="slider_img" href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/"><img width="470" height="450" src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_-470x450.jpg" class="attachment-shop_catalog size-shop_catalog" alt=""></a>
                                              --%>
                                        </div>
                                        <div class="card-info">
                                            <div class="caption">
                                                <div class="name-item">
                                                    <a class="product-name"
                                                       href="/viewProduct.html?id=${item.id}">${item.name}</a>
                                                </div>
                                                <span class="product-price card-price-block">
					<span class="price-title">Price</span>

	<span class="price">

      <c:set var="test" value="1"/>

    <c:forEach var="cate" items="${item.category}">
        <c:if test="${cate.id==1}">
    <del><span class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;</span>${item.price}</span></del> <ins><span
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



    </span>
				</span>
                                                <div class="rating">

                                                    <div class="star-rating"><span style="width:59540%">Rated <strong
                                                            class="rating">2977</strong> out of 5</span></div>
                                                    <div class="add-review">
                                                        <span><span class="review-counter">0</span>Review(s)</span>
                                                        <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/#comments">Add
                                                            Your Review</a>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="add-buttons">


                                                <a href="/viewProduct.html?id=${item.id}"
                                                   class="btn btn-add btn-add-quickview">
                                                    <i class="fa fa-eye"></i>
                                                </a>


                                                <a class="btn btn-add btn-add-compare"><i class="fa fa-refresh"></i></a>
                                                <a
                                                   onclick="addCartByIdWithAjax('${item.id}')"
                                                   class="btn btn-add btn-add-wish">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>


                                            </div>
                                        </div>
                                    </div>
                                </li>


                            </c:forEach>


                        </ul>
                    </div>
                    <div class="pagination-container">

                        <nav class="pagination-full clearfix">
                            <ul class="pagination">

                                <%--
                                                                <li><span class="page-numbers current">1</span></li>

                                                                <li><a class="page-numbers"
                                                                       href="http://wpsparrow.com/wordpress/ismiler/page/2/?s=p&amp;post_type=product">2</a>
                                                                </li>
                                --%>
                                <c:forEach varStatus="loop" begin="1" end="${count}">
                                    <c:choose>
                                        <c:when test="${loop.count==param.page}">
                                            <li><a class="page-numbers  current"
                                                   href="/search?name=${param.name}&page=${loop.count}">${loop.count}</a>
                                            </li>

                                        </c:when>
                                        <c:otherwise>
                                            <li><a class="page-numbers"
                                                   href="/search?name=${param.name}&page=${loop.count}">${loop.count}</a>
                                            </li>
                                        </c:otherwise>


                                    </c:choose>
                                </c:forEach>

                            </ul>
                            <ul class="pagination pagination-add">
                                <li>
                                </li>
                                <li>
                                    <a href="http://wpsparrow.com/wordpress/ismiler/page/2/?s=p&amp;post_type=product">Next</a>
                                </li>
                            </ul>
                        </nav>

                    </div>
                </div>

            </div>


        </div>
    </div>
    <jsp:include page="/jsp/layout/footer.jsp"/>
</div>
<jsp:include page="/jsp/layout/js-footer.jsp"/>
</body>
</html>
