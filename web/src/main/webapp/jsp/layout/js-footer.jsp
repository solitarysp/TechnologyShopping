<script type="text/javascript">(function() {

    var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
    if( urlFields && urlFields.length > 0 ) {
        for( var j=0; j < urlFields.length; j++ ) {
            addEventListener(urlFields[j],'blur',maybePrefixUrlField);
        }
    }/* test if browser supports date fields */
    var testInput = document.createElement('input');
    testInput.setAttribute('type', 'date');
    if( testInput.type !== 'date') {

        /* add placeholder & pattern to all date fields */
        var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
        for(var i=0; i<dateFields.length; i++) {
            if(!dateFields[i].placeholder) {
                dateFields[i].placeholder = 'YYYY-MM-DD';
            }
            if(!dateFields[i].pattern) {
                dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
            }
        }
    }

})();</script>			<script type="text/javascript">
    function revslider_showDoubleJqueryError(sliderID) {
        var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
        errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
        errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
        errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
        errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
        jQuery(sliderID).show().html(errorMessage);
    }
</script>
<link rel='stylesheet' id='animate-css-css'  href='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min.css?ver=5.2.1' type='text/css' media='all' />
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.8.1'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.70'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var woocommerce_params = {"ajax_url":"\/wordpress\/ismiler\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/wpsparrow.com\/wordpress\/ismiler\/?wc-ajax=%%endpoint%%"};
    /* ]]> */
</script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=3.2.6'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var wc_cart_fragments_params = {"ajax_url":"\/wordpress\/ismiler\/wp-admin\/admin-ajax.php","wc_ajax_url":"http:\/\/wpsparrow.com\/wordpress\/ismiler\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments_92f0bf41f46f301a22c3b0c25ff8a307"};
    /* ]]> */
</script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min.js?ver=3.2.6'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.min.js?ver=3.1.6'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.selectBox.min.js?ver=1.2.0'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var yith_wcwl_l10n = {"ajax_url":"\/wordpress\/ismiler\/wp-admin\/admin-ajax.php","redirect_to_cart":"no","multi_wishlist":"","hide_add_button":"1","is_user_logged_in":"","ajax_loader_url":"http:\/\/wpsparrow.com\/wordpress\/ismiler\/wp-content\/plugins\/yith-woocommerce-wishlist\/assets\/images\/ajax-loader.gif","remove_from_wishlist_after_add_to_cart":"yes","labels":{"cookie_disabled":"We are sorry, but this feature is available only if cookies are enabled on your browser.","added_to_cart_message":"<div class=\"woocommerce-message\">Product correctly added to cart<\/div>"},"actions":{"add_to_wishlist_action":"add_to_wishlist","remove_from_wishlist_action":"remove_from_wishlist","move_to_another_wishlist_action":"move_to_another_wishlsit","reload_wishlist_and_adding_elem_action":"reload_wishlist_and_adding_elem"}};
    /* ]]> */
</script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.yith-wcwl.js?ver=2.1.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/quickview.js?ver=1.11.2'></script>
<%--
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/isotope/jquery.isotope.min.js?ver=1.11.2'></script>
--%>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/fancybox/jquery.fancybox.pack.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/owl-carousel/owl.carousel.min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/letters/jquery.shuffleLetters.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/waypoints/waypoints.min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/bxslider/jquery.bxslider.min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/scrollreveal/scrollreveal.min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/assets/flexslider/jquery.flexslider-min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/modernizr.custom.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/classie.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/cssua.min.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-includes/js/comment-reply.min.js?ver=4.8.5'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/theme.js?ver=1.11.2'></script>
<script type='text/javascript'>
    var _quickViewEnabled = true
</script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/themes/ismiler/js/custom-admin.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-includes/js/wp-embed.min.js?ver=4.8.5'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.2.1'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min.js?ver=5.2.1'></script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/js_composer/assets/lib/bower/skrollr/dist/skrollr.min.js?ver=5.2.1'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var mc4wp_forms_config = [];
    /* ]]> */
</script>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/mailchimp-for-wp/assets/js/forms-api.min.js?ver=4.1.6'></script>
<!--[if lte IE 9]>
<script type='text/javascript' src='http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/mailchimp-for-wp/assets/js/third-party/placeholders.min.js?ver=4.1.6'></script>
<![endif]-->