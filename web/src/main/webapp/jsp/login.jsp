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
        <div class="woocommerce">


            <h2>Login</h2>

            <form class="woocommerce-form woocommerce-form-login login" name='f' action="login.html" method='POST'>


                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="username">Username or email address <span class="required">*</span></label>
                    <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username"
                           id="username" value="">
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="password">Password <span class="required">*</span></label>
                    <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password"
                           id="password">
                </p>


                <p class="form-row">
                    <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="cdb2ac42ed"><input
                        type="hidden" name="_wp_http_referer" value="/wordpress/ismiler/my-account/"> <input
                        type="submit" class="woocommerce-Button button" name="login" value="Login">
                    <label class="woocommerce-form__label woocommerce-form__label-for-checkbox inline">
                        <input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme"
                               type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                    </label>
                </p>
                <p class="woocommerce-LostPassword lost_password">
                    <a href="http://wpsparrow.com/wordpress/ismiler/my-account/lost-password/">Lost your password?</a>
                </p>
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

            </form>


        </div>
    </div>
    <jsp:include page="/jsp/layout/footer.jsp"/>
</div>
<jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
