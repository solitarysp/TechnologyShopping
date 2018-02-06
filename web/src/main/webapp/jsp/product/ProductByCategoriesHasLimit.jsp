<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="itemAll" value="${products}"/>
<div class="row">

    <c:forEach var="item" items="${itemAll}" >
        <li class="isotope-item col-sm-4 accessories carrier-phones cases  <c:forEach var="item2" items="${item.category}" begin="0" end="10">
                                                ${item2.name}
</c:forEach> ">
            <div class=" first item-grid b-item-card post-2977 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-carrier-phones product_cat-cases product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7  instock featured shipping-taxable purchasable product-type-simple">
                <div class="image">


                    <a href="/viewProduct.html?id=${item.id}">


                        <c:forEach var="cate"  items="${item.category}">
                            <c:if test="${param.id==cate.id}">
                                <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                <c:if test="${cate.value!=0}">
                                    <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                </c:if>
                            </c:if>

                        </c:forEach>
                        <img width="470" height="450"
                             src="admin/images/${item.IMG}"
                             class="attachment-shop_catalog size-shop_catalog wp-post-image"
                             alt=""/> </a>


                        <%--   <a class="slider_img"
                              href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/"><img
                                   width="470" height="450"
                                   src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_-470x450.jpg"
                                   class="attachment-shop_catalog size-shop_catalog"
                                   alt=""/></a>--%>

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


    </ins></span>
				</span>
                        <div class="rating">

                            <div class="star-rating"><span
                                    style="width:59540%">Rated <strong
                                    class="rating">2977</strong> out of 5</span>
                            </div>
                            <div class="add-review">
                                                                <span><span
                                                                        class="review-counter">0</span>Review(s)</span>
                                <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/#comments">Add
                                    Your Review</a>
                            </div>
                        </div>

                        <div class="product-description">
                            <p>Ut enim ad minim veniam quis nostrud exercita
                                tion
                                ullamco laboris nisi aliquip exa commodo
                                consequat.
                                Duis
                                aute irure dolor in reprehenderit in voluptate
                                velit
                                esse cillum dolore eu fugiat nulla pariatur</p>
                        </div>

                    </div>


                    <div class="add-buttons">


                        <a href="/viewProduct.html?id=${item.id}"
                           class="btn btn-add btn-add-quickview">
                            <i class="fa fa-eye"></i>
                        </a>


                            <%--            <a class="btn btn-add btn-add-compare"><i
                                                class="fa fa-refresh"></i></a>
                                        <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                           class="btn btn-add btn-add-wish">
                                            <i class="fa fa-heart-o"></i>
                                        </a>--%>


                        <a onclick="addCartByIdWithAjax('${item.id}')"
                           rel="nofollow"
                           data-product_id="2977" data-product_sku=""
                           data-quantity="1"
                           class="btn btn-add btn-add-cart"> <i
                                class="fa fa-shopping-bag"></i>
                        </a>

                        <div class="cart-add-buttons">

                            <a onclick="addCartByIdWithAjax('${item.id}')"
                               rel="nofollow" data-product_id="2977"
                               data-product_sku=""
                               data-quantity="1" class="btn "> <i
                                    class="fa fa-shopping-cart"></i> add to cart</a>
                        </div>

                    </div>
                </div>
            </div>
        </li>

    </c:forEach>
    <div class="col-xs-12  col-sm-12 col-md-15 ">

        <div style="width: 1000px;" class="pagination-container">

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
                                       honclick="clickGetSaleCATEGORIES(1,15,${loop.count})">${loop.count}</a>
                                </li>

                            </c:when>
                            <c:otherwise>
                                <li><a class="page-numbers"
                                       onclick="clickGetSaleCATEGORIES(1,15,${loop.count})">${loop.count}</a>
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