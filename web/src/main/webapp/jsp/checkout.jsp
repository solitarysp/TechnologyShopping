<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <jsp:include page="/jsp/layout/header.jsp"/>
</head>
<body class="home page-template-default page page-id-2603 animated-css layout-switch home-construction-v2 primary-menu-not-active wpb-js-composer js-comp-ver-5.2.1 vc_responsive"  data-scrolling-animations="false" data-header="fixed-header">
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
                        <h3 class="page-title pull-left">Checkout</h3>
                        <div class="b-breadcrumbs pull-right">
                            <ul class="list-unstyled"><li class="font-additional font-weight-normal color-main text-uppercase"><a href="http://wpsparrow.com/wordpress/ismiler" class="color-main">Home</a></li><li class="font-additional font-weight-normal color-main text-uppercase">Checkout</li>
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
                            <%-- <div class="woocommerce-info">Returning customer? <a href="#" class="showlogin">Click here to login</a></div> --%>
                            <%--<form class="woocommerce-form woocommerce-form-login login" method="post" style="display:none;">--%>



                                <%--<p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing &amp; Shipping section.</p>--%>

                                <%--<p class="form-row form-row-first">--%>
                                    <%--<label for="username">Username or email <span class="required">*</span></label>--%>
                                    <%--<input type="text" class="input-text" name="username" id="username" />--%>
                                <%--</p>--%>
                                <%--<p class="form-row form-row-last">--%>
                                    <%--<label for="password">Password <span class="required">*</span></label>--%>
                                    <%--<input class="input-text" type="password" name="password" id="password" />--%>
                                <%--</p>--%>
                                <%--<div class="clear"></div>--%>


                                <%--<p class="form-row">--%>
                                    <%--<input type="hidden" id="_wpnonce" name="_wpnonce" value="10368f1e88" /><input type="hidden" name="_wp_http_referer" value="/wordpress/ismiler/checkout/" />		<input type="submit" class="button" name="login" value="Login" />--%>
                                    <%--<input type="hidden" name="redirect" value="http://wpsparrow.com/wordpress/ismiler/checkout/" />--%>
                                    <%--<label class="woocommerce-form__label woocommerce-form__label-for-checkbox inline">--%>
                                        <%--<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span>Remember me</span>--%>
                                    <%--</label>--%>
                                <%--</p>--%>
                                <%--<p class="lost_password">--%>
                                    <%--<a href="http://wpsparrow.com/wordpress/ismiler/my-account/lost-password/">Lost your password?</a>--%>
                                <%--</p>--%>

                                <%--<div class="clear"></div>--%>


                            <%--</form>--%>
                            <%--<form class="checkout_coupon" method="post" style="display:block">--%>

                                <%--<p class="form-row form-row-first">--%>
                                    <%--<input type="text" name="coupon_code" class="input-text" placeholder="Coupon code" id="coupon_code" value="" />--%>
                                <%--</p>--%>

                                <%--<p class="form-row form-row-last">--%>
                                    <%--<input type="submit" class="button" name="apply_coupon" value="Apply coupon" />--%>
                                <%--</p>--%>

                                <%--<div class="clear"></div>--%>
                            <%--</form>--%>

                            <form id="form"  class="checkout woocommerce-checkout"">



                                <div class="col2-set" id="customer_details">
                                    <div class="col-1">
                                        <div class="woocommerce-billing-fields">

                                            <h3>Billing details</h3>



                                            <div class="woocommerce-billing-fields__field-wrapper">
                                                <p class="form-row form-row-first validate-required" id="billing_first_name_field" data-priority="10" style="width: 100%">
                                                    <label for="billing_first_name" class="">Full Name<abbr class="required" title="required">*</abbr></label>
                                                    <input type="text" class="input-text " name="Full_name" id="billing_first_name" placeholder=""  value="${user.name}" autocomplete="given-name" autofocus="autofocus" /></p>
                                                <p class="form-row form-row-wide" id="billing_company_field" data-priority="30"><label for="billing_company" class="">Company name</label><input type="text" class="input-text " name="company" id="billing_company" placeholder="Company"  value="${user.customerAddress.company}" autocomplete="organization" /></p>

                                                <p class="form-row form-row-wide address-field validate-required" id="billing_address_1_field" data-priority="50">
                                                    <label for="billing_address_1" class="">Street address </label>
                                                    <input type="text" class="input-text " name="nation" id="billing_address_1" placeholder="House number and street name"  value="${user.customerAddress.nation}" autocomplete="address-line1" /></p><p class="form-row form-row-wide address-field" id="billing_address_2_field" data-priority="60">
                                                <%--<input type="text" class="input-text" name="billing_address_2" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional)"  value="${user.customerAddress.district}" autocomplete="address-line2" />--%>
                                            </p>
                                                <p class="form-row form-row-wide address-field validate-state" id="billing_state_field"><label for="billing_state" class="">District</label>
                                                    <input type="text" class="input-text" name="district" id="billing_state" value="${user.customerAddress.district}" autocomplete="address-level1" placeholder=""/></p>
                                                <p class="form-row form-row-wide address-field validate-required" id="billing_city_field" data-priority="70">
                                                    <label for="billing_city" class="">Town / City </label><input type="text" class="input-text " name="city" id="billing_city" placeholder=""  value="${user.customerAddress.city}" autocomplete="address-level2" /></p>
                                                <p class="form-row form-row-wide address-field validate-required" data-priority="70">
                                                    <label for="billing_address_1" class="">Address <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text" name="AddressFull" placeholder="Address"  value="${user.customerAddress.addressFull}" autocomplete="billing_address_1" /></p>

                                                <p class="form-row form-row-wide address-field validate-postcode" id="billing_postcode_field" data-priority="65">
                                                    <label for="billing_postcode" class="">Postcode / ZIP</label><input type="text" class="input-text " name="postcode" id="billing_postcode" placeholder=""  value="${user.customerAddress.zipCode}" autocomplete="postal-code" /></p>
                                                <p class="form-row form-row-first validate-required validate-phone" id="billing_phone_field" data-priority="100">
                                                    <label for="billing_phone" class="">Phone <abbr class="required" title="required">*</abbr></label>
                                                    <input type="tel" class="input-text " name="phone" id="billing_phone" placeholder=""  value="${user.customerAddress.phone}" autocomplete="tel" /></p>
                                                <p class="form-row form-row-last validate-required validate-email" id="billing_email_field" data-priority="110">
                                                    <label for="billing_email" class="">Email address <abbr class="required" title="required">*</abbr></label>
                                                    <input type="email" class="input-text " name="email" id="billing_email" placeholder=""  value="${user.customerAddress.email}" autocomplete="email username" /></p>	</div>

                                        </div>
                                        <p class="form-row form-row-wide address-field update_totals_on_change validate-required" id="billing_country_field" data-priority="40">
                                            <label for="billing_country" class="">Payment <abbr class="required" title="required">*</abbr></label>
                                            <select name="payment" id="billing_country" class="country_to_state country_select " autocomplete="country">
                                                <option>Select a payment&hellip;</option>
                                                <c:forEach var="p" items="${payment}" >
                                                    <option value="${p.id}">${p.content}</option>
                                                </c:forEach>
                                            </select>
                                        <noscript>
                                            <input type="submit" name="woocommerce_checkout_update_totals" value="Update country" />
                                        </noscript>
                                        </p>
                                        <%--<div class="woocommerce-account-fields">--%>
                                            <%--<div class="create-account">--%>
                                                <%--&lt;%&ndash;<p class="form-row validate-required" id="account_password_field" data-priority=""><label for="account_password" class="">Create account password <abbr class="required" title="required">*</abbr></label><input type="password" class="input-text " name="account_password" id="account_password" placeholder="Password"  value=""  /></p>								<div class="clear"></div>&ndash;%&gt;--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    </div>


                                    <div class="col-2">
                                        <div class="woocommerce-shipping-fields">
                                        </div>
                                        <div class="woocommerce-additional-fields">



                                            <h3>Additional information</h3>


                                            <div class="woocommerce-additional-fields__field-wrapper">
                                                <p class="form-row notes" id="order_comments_field" data-priority=""><label for="order_comments" class="">Order notes</label><textarea name="order_comments" class="input-text " id="order_comments" placeholder="Notes about your order, e.g. special notes for delivery."  rows="2" cols="5"></textarea></p>					</div>


                                        </div>
                                    </div>
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
                                        <c:set var="totalPrice" value="${0}" scope="page"/>
                                        <c:forEach var="p" items="${listProduct}">
                                            <tr class="cart_item">
                                                <td class="product-name">
                                                   ${p.name} <strong class="product-quantity">x ${p.repository}</strong></td>
                                                <td class="product-total">
                                                    <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${p.price * p.repository} VND</span>						</td>
                                            </tr>
                                            <c:set var="totalPrice" value="${totalPrice + (p.price * p.repository)}"/>
                                        </c:forEach>

                                        </tbody>
                                        <tfoot>
                                        <tr class="order-total">
                                            <th>Total</th>
                                            <td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol"></span>${totalPrice}</span> VND</strong> </td>
                                        </tr>


                                        </tfoot>
                                    </table>
                                    <div id="payment" class="woocommerce-checkout-payment">
                                        <%--<ul class="wc_payment_methods payment_methods methods">--%>
                                            <%--<li class="wc_payment_method payment_method_cheque">--%>
                                                <%--<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque"  checked='checked' data-order_button_text="" />--%>

                                                <%--<label for="payment_method_cheque">--%>
                                                    <%--Check payments 	</label>--%>
                                                <%--<div class="payment_box payment_method_cheque" >--%>
                                                    <%--<p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>--%>
                                                <%--</div>--%>
                                            <%--</li>--%>
                                            <%--<li class="wc_payment_method payment_method_paypal">--%>
                                                <%--<input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal"  data-order_button_text="Proceed to PayPal" />--%>

                                                <%--<label for="payment_method_paypal">--%>
                                                    <%--PayPal <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png" alt="PayPal acceptance mark" /><a href="https://www.paypal.com/by/cgi-bin/webscr?cmd=xpt/Marketing/general/WIPaypal-outside" class="about_paypal" onclick="javascript:window.open('https://www.paypal.com/by/cgi-bin/webscr?cmd=xpt/Marketing/general/WIPaypal-outside','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;">What is PayPal?</a>	</label>--%>
                                                <%--<div class="payment_box payment_method_paypal" style="display:none;">--%>
                                                    <%--<p>Pay via PayPal; you can pay with your credit card if you don&#8217;t have a PayPal account.</p>--%>
                                                <%--</div>--%>
                                            <%--</li>--%>
                                        <%--</ul>--%>
                                        <div class="form-row place-order">
                                            <noscript>
                                                Since your browser does not support JavaScript, or it is disabled, please ensure you click the <em>Update Totals</em> button before placing your order. You may be charged more than the amount stated above if you fail to do so.			<br/><input type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals" />
                                            </noscript>



                                            <input type="button" onclick="Registration()" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order" />

                                            <input type="hidden" name="_wpnonce" value="944d0a21ad" /><input type="hidden" name="_wp_http_referer" value="/wordpress/ismiler/checkout/" />	</div>
                                    </div>
                                </div>


                            </form>

                        </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>


        <script type="text/javascript">


            function Registration() {
                var data = $("#form").serialize();
                $.ajax({
                    url: "/addOder?${_csrf.parameterName}=${_csrf.token}",
                    type: "post",
                    dataType: "text",
                    data: data,
                    success: function (result) {
                        if (result.trim() == 'erroeEmail') {
                            swal("Email đã tồn tại", "ERROR!", "error");
                        }
                        if (result.trim() == 'success') {
                            swal("Tạo tài khoản thành công!.")
                                .then((value) => {
                                    window.location = "/login.html";
                                });
                        }
                    },
                    complete: function (xhr, textStatus) {
                        if (xhr.status == 403) {
                            $('#result').html("Bạn không có quyền xem");
                            $('#stt').html("Bạn không có quyền xem");
                        }
                    }
                });
            }

        </script>


        <jsp:include page="/jsp/layout/footer.jsp"/>
    </div>
    <jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
