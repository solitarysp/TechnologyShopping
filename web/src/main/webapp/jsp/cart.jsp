<%--
  Created by IntelliJ IDEA.
  User: tungct
  Date: 1/23/18
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../resources/layout/header"/>
</head>
<body class="home page-template-default page page-id-2603 animated-css layout-switch home-construction-v2 primary-menu-not-active wpb-js-composer js-comp-ver-5.2.1 vc_responsive"  data-scrolling-animations="false" data-header="fixed-header">
<!-- Loader -->
<div id="page-preloader"><span class="spinner"></span></div>
<!-- Loader end -->
<div class="sp-body">
    <div class="b-page">
        <jsp:include page="../resources/layout/nav-header"/>

        <div class="b-page-header custom-7bg-">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 clearfix">
                        <h3 class="page-title pull-left">Cart</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled"><li class="font-additional font-weight-normal color-main text-uppercase"><a href="http://wpsparrow.com/wordpress/ismiler" class="color-main">Home</a></li><li class="font-additional font-weight-normal color-main text-uppercase">Cart</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <section class="page-content" id="pageContent">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-7 col-md-12 col2-right  ">

                        <div class="rtd">  <div class="woocommerce">
                            <div class="woocommerce-message"><a href="http://wpsparrow.com/wordpress/ismiler/cart/" class="button wc-forward">View cart</a> &ldquo;BLU VIVO 5 Smartphone&rdquo; has been added to your cart.</div>

                            <form action="http://wpsparrow.com/wordpress/ismiler/cart/" method="post" class="cart-table ">


                                <div class="b-table b-cart-table ">
                                    <table class="shop_table shop_table_responsive cart table" cellspacing="0">
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

                                        <tr class="cart_item">



                                            <td class="product-thumbnail">
                                                <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/"><img width="170" height="150" src="//wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/81lZPI2hmoL._SX522_-170x150.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" /></a>						</td>

                                            <td   data-title="Product">
                                                <div class="caption">
                                                    <a class="product-name" href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/">BLU VIVO 5 Smartphone</a>							</div>
                                            </td>

                                            <td class="product-price" data-title="Price">
							<span class="product-price total-price">
							<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&pound;</span>875.00</span>						    </span>
                                            </td>

                                            <td class="product-quantity" data-title="Quantity">

                                                <div class="input-group btn-block qty-block" data-trigger="spinner">
                                                    <a class="spinner-btn-mod" href="javascript:;" data-spin="down">-</a>

                                                    <input type="text" data-rule="quantity" step="1" min="0" max="" name="cart[2bd2e3373dce441c6c3bfadd1daa953e][qty]" value="3" title="Qty" class="input-text qty text" size="4" pattern="[0-9]*" inputmode="numeric" />
                                                    <a class="spinner-btn-mod" href="javascript:;" data-spin="up">+</a>
                                                </div>


                                            </td>

                                            <td class="product-subtotal" data-title="Total">
                                                <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&pound;</span>2,625.00</span>						</td>
                                            <td class="product-remove">

                                                <a href="http://wpsparrow.com/wordpress/ismiler/cart/?remove_item=2bd2e3373dce441c6c3bfadd1daa953e&#038;_wpnonce=dded64d263" class="btn btn-remove" title="Remove this item" data-product_id="2977" data-product_sku=""><i class="fa fa-trash fa-lg"></i></a>						</td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="actions">

                                                <div class="coupon">

                                                    <label for="coupon_code">Coupon:</label> <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code" /> <input type="submit" class="button" name="apply_coupon" value="Apply Coupon" />

                                                </div>

                                                <input type="submit" class="button" name="update_cart" value="Update Cart" />


                                                <input type="hidden" id="_wpnonce" name="_wpnonce" value="dded64d263" /><input type="hidden" name="_wp_http_referer" value="/wordpress/ismiler/cart/" />				</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>


                            </form>

                            <div class="cart-collaterals">

                                <div class="cart_totals ">


                                    <h2>Cart totals</h2>

                                    <table cellspacing="0" class="shop_table shop_table_responsive">

                                        <tr class="cart-subtotal">
                                            <th>Subtotal</th>
                                            <td data-title="Subtotal"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&pound;</span>2,625.00</span></td>
                                        </tr>






                                        <tr class="order-total">
                                            <th>Total</th>
                                            <td data-title="Total"><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&pound;</span>2,625.00</span></strong> </td>
                                        </tr>


                                    </table>

                                    <div class="wc-proceed-to-checkout">

                                        <a href="http://wpsparrow.com/wordpress/ismiler/checkout/" class="checkout-button button alt wc-forward">
                                            Proceed to checkout</a>
                                    </div>


                                </div>

                            </div>

                        </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>





        <jsp:include page="../resources/layout/footer"/>
    </div>
    <jsp:include page="../resources/layout/js-footer"/>
</div>
</body>
</html>
