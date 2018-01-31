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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@6.10.2/dist/sweetalert2.min.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
        <div style="margin-left: 30px;margin-right: 30px;" class="woocommerce">


            <h2 style="margin-left: 30px;">Registration</h2>

            <form id="form" class="woocommerce-form woocommerce-form-login login">

                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="email">Email: <span class="required">*</span></label>
                    <input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email"
                           id="email" value="">
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="name">name: <span class="required">*</span></label>
                    <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="name"
                           id="name" value="">
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="password">Password <span class="required">*</span></label>
                    <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password"
                           id="password">
                </p>
                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="password1">Password nhập lại <span class="required">*</span></label>
                    <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password1"
                           id="password1">
                </p>

                <p class="form-row">
                    <button
                            type="button" onclick="clickRegistration()" class="woocommerce-Button button"
                            name="REGISTRATION" value="REGISTRATION">REGISTRATION
                    </button>

                </p>

                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

            </form>

            <script type="text/javascript">
                function clickRegistration() {
                    var pass = document.getElementsByName('password')[0].value;
                    var pass1 = document.getElementsByName('password1')[0].value;
                    var email = document.getElementsByName('email')[0].value;

                    var exp =/(\w(=?@)\w+\.{1}[a-zA-Z]{2,})/i
                    if (exp.test(email) ==true) {
                        if (pass == pass1) {
                            Registration();
                        } else {
                            swal("2 mật khẩu nhập phải giống nhau!", "ERROR!", "error");
                        }

                    } else {
                        swal("Sai định dạng email", "ERROR!", "error");
                        console.log(exp.test(email));
                    }
                }





                function Registration() {
                    var data = $("#form").serialize();
                    $.ajax({
                        url: "/registration?${_csrf.parameterName}=${_csrf.token}",
                        type: "post",
                        dataType: "text",
                        data: data,
                        success: function (result) {

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
        </div>
    </div>
    <jsp:include page="/jsp/layout/footer.jsp"/>
</div>
<jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
</body>
</html>
