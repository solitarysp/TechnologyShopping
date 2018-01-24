<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type='text/javascript' src='jsCustom/Home.js'></script>
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

        <c:set var="itemSale" value="${productListSale}"/>
        <c:set var="itemAll" value="${productList}"/>
        <c:set var="itemProductListBestSeller"
               value="${productListBestSellers}"/>


        <div class="home-template">
            <div class="container">
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true"
                     class="vc_row wpb_row vc_row-fluid vc_row-no-padding carousel-type-None carousel-in-row-enabled vc_row-no-padding">
                    <span class="vc_row-overlay" style="background-color: rgba(0,0,0,0.1) !important;"></span>
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="wpb_revslider_element wpb_content_element">
                                    <link href="http://fonts.googleapis.com/css?family=Montserrat:400%7CRoboto:500"
                                          rel="stylesheet" property="stylesheet" type="text/css" media="all">
                                    <div id="rev_slider_1_1_wrapper"
                                         class="rev_slider_wrapper fullwidthbanner-container" data-source="gallery"
                                         style="margin:0px auto;background:#f4f4f4;padding:0px;margin-top:0px;margin-bottom:0px;">
                                        <!-- START REVOLUTION SLIDER 5.4.5.1 fullwidth mode -->
                                        <div id="rev_slider_1_1" class="rev_slider fullwidthabanner"
                                             style="display:none;" data-version="5.4.5.1">
                                            <ul>    <!-- SLIDE  -->
                                                <li data-index="rs-1" data-transition="fade" data-slotamount="default"
                                                    data-hideafterloop="0" data-hideslideonmobile="off"
                                                    data-easein="default" data-easeout="default" data-masterspeed="300"
                                                    data-thumb="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s1-4-100x50.png"
                                                    data-rotate="0" data-saveperformance="off" data-title="Slide"
                                                    data-param1="" data-param2="" data-param3="" data-param4=""
                                                    data-param5="" data-param6="" data-param7="" data-param8=""
                                                    data-param9="" data-param10="" data-description="">
                                                    <!-- MAIN IMAGE -->
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                         alt="" title="s1-4" width="1600" height="570"
                                                         data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s1-4.png"
                                                         data-bgposition="center center" data-kenburns="on"
                                                         data-duration="10000" data-ease="Linear.easeNone"
                                                         data-scalestart="100" data-scaleend="120" data-rotatestart="0"
                                                         data-rotateend="0" data-blurstart="0" data-blurend="0"
                                                         data-offsetstart="0 0" data-offsetend="0 0"
                                                         data-bgparallax="off" class="rev-slidebg" data-no-retina>
                                                    <!-- LAYERS -->

                                                    <!-- LAYER NR. 1 -->
                                                    <div class="tp-caption   tp-resizeme rs-parallaxlevel-2"
                                                         id="slide-1-layer-2"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['789','498','374','17']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['77','102','111','293']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"x:right;","speed":300,"to":"o:1;","delay":500,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 5;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['445px','445px','445px','445px']"
                                                            data-hh="['468px','468px','468px','468px']" width="445"
                                                            height="468"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s1-3-2.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 2 -->
                                                    <div class="tp-caption   tp-resizeme rs-parallaxlevel-1"
                                                         id="slide-1-layer-3"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['19','19','19','29']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['152','152','152','53']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"opacity:0;","speed":440,"to":"o:1;","delay":660,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 6;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['335px','335px','335px','335px']"
                                                            data-hh="['144px','144px','144px','144px']" width="335"
                                                            height="144"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s1-1-2.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 3 -->
                                                    <div class="tp-caption   tp-resizeme rs-parallaxlevel-1"
                                                         id="slide-1-layer-4"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['21','21','21','22']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['335','335','335','220']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"opacity:0;","speed":350,"to":"o:1;","delay":500,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 7;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['345px','345px','345px','345px']"
                                                            data-hh="['40px','40px','40px','40px']" width="345"
                                                            height="40"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s1-2.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 4 -->
                                                    <div class="tp-caption rev-btn "
                                                         id="slide-1-layer-5"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['20','20','20','20']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['436','436','436','436']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="button"
                                                         data-responsive_offset="on"
                                                         data-responsive="off"
                                                         data-frames='[{"from":"x:{-250,250};y:{-150,150};rX:{-90,90};rY:{-90,90};rZ:{-360,360};sX:0;sY:0;opacity:0;","speed":1500,"to":"o:1;","delay":800,"ease":"Power3.easeOut"},{"delay":6520,"speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(68,68,68,1);bg:rgba(255,255,255,1);"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[12,12,12,12]"
                                                         data-paddingright="[35,35,35,35]"
                                                         data-paddingbottom="[12,12,12,12]"
                                                         data-paddingleft="[35,35,35,35]"

                                                         style="z-index: 8; white-space: nowrap; font-size: 17px; line-height: 17px; font-weight: 400; color: rgba(255,255,255,1);font-family:Montserrat;background-color:rgba(68,68,68,1);outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                                                        SHOP NOW
                                                    </div>
                                                </li>
                                                <!-- SLIDE  -->
                                                <li data-index="rs-3" data-transition="fade" data-slotamount="default"
                                                    data-hideafterloop="0" data-hideslideonmobile="off"
                                                    data-easein="default" data-easeout="default" data-masterspeed="300"
                                                    data-thumb="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/revslider/home12/s1-4-100x50.png"
                                                    data-rotate="0" data-saveperformance="off" data-title="Slide"
                                                    data-param1="" data-param2="" data-param3="" data-param4=""
                                                    data-param5="" data-param6="" data-param7="" data-param8=""
                                                    data-param9="" data-param10="" data-description="">
                                                    <!-- MAIN IMAGE -->
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                         alt="" title="s1-4.png" width="1600" height="570"
                                                         data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/revslider/home12/s1-4.png"
                                                         data-bgposition="center center" data-kenburns="on"
                                                         data-duration="10000" data-ease="Linear.easeNone"
                                                         data-scalestart="100" data-scaleend="120" data-rotatestart="0"
                                                         data-rotateend="0" data-blurstart="0" data-blurend="0"
                                                         data-offsetstart="0 0" data-offsetend="0 0"
                                                         data-bgparallax="off" class="rev-slidebg" data-no-retina>
                                                    <!-- LAYERS -->

                                                    <!-- LAYER NR. 5 -->
                                                    <div class="tp-caption   tp-resizeme rs-parallaxlevel-1"
                                                         id="slide-3-layer-6"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['670','412','412','-149']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['113','109','109','335']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"x:right;","speed":300,"to":"o:1;","delay":800,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 9;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['600px','600px','600px','600px']"
                                                            data-hh="['381px','381px','381px','381px']" width="600"
                                                            height="381"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s2-3.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 6 -->
                                                    <div class="tp-caption   tp-resizeme"
                                                         id="slide-3-layer-7"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['9','9','9','13']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['131','131','131','123']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"y:-50px;opacity:0;","speed":300,"to":"o:1;","delay":800,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 10;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['199px','199px','199px','199px']"
                                                            data-hh="['19px','19px','19px','19px']" width="199"
                                                            height="19"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s2-1.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 7 -->
                                                    <div class="tp-caption   tp-resizeme"
                                                         id="slide-3-layer-8"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['4','4','4','4']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['171','171','171','171']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="image"
                                                         data-responsive_offset="on"

                                                         data-frames='[{"from":"x:-50px;opacity:0;","speed":300,"to":"o:1;","delay":800,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[0,0,0,0]"
                                                         data-paddingright="[0,0,0,0]"
                                                         data-paddingbottom="[0,0,0,0]"
                                                         data-paddingleft="[0,0,0,0]"

                                                         style="z-index: 11;"><img
                                                            src="http://wpsparrow.com/wordpress/ismiler/wp-content/plugins/revslider/admin/assets/images/dummy.png"
                                                            alt="" data-ww="['438px','438px','438px','438px']"
                                                            data-hh="['131px','131px','131px','131px']" width="438"
                                                            height="131"
                                                            data-lazyload="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2016/08/s2-2.png"
                                                            data-no-retina></div>

                                                    <!-- LAYER NR. 8 -->
                                                    <div class="tp-caption rev-btn "
                                                         id="slide-3-layer-10"
                                                         data-x="['left','left','left','left']"
                                                         data-hoffset="['8','8','8','8']"
                                                         data-y="['top','top','top','top']"
                                                         data-voffset="['354','354','354','354']"
                                                         data-width="none"
                                                         data-height="none"
                                                         data-whitespace="nowrap"

                                                         data-type="button"
                                                         data-responsive_offset="on"
                                                         data-responsive="off"
                                                         data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":800,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(68,68,68,1);"}]'
                                                         data-textAlign="['left','left','left','left']"
                                                         data-paddingtop="[12,12,12,12]"
                                                         data-paddingright="[35,35,35,35]"
                                                         data-paddingbottom="[12,12,12,12]"
                                                         data-paddingleft="[35,35,35,35]"

                                                         style="z-index: 12; white-space: nowrap; font-size: 17px; line-height: 17px; font-weight: 500; color: rgba(68,68,68,1);font-family:Roboto;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
                                                        SHOP NOW
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="tp-bannertimer"
                                                 style="height: 5px; background: rgba(0,0,0,0.15);"></div>
                                        </div>


                                    </div><!-- END REVOLUTION SLIDER --></div>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                <div class="vc_row-full-width"></div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled reveral-scroll scroll-animate vc_custom_1502381433091">
                    <div class="wpb_column vc_column_container vc_col-sm-4">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <ul class="category-images">
                                    <li class="grid">

                                        <span class="vc_row-overlay"
                                              style="background-color: rgba(0,0,0,0.1) !important;"></span>
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/prom1-1.jpg"
                                                 alt="For men">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                    <div class="wpb_column vc_column_container vc_col-sm-8">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <ul class="category-images">
                                    <li class="grid">

                                        <span class="vc_row-overlay"
                                              style="background-color: rgba(0,0,0,0.1) !important;"></span>
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/prom1-2.jpg"
                                                 alt="Shoes">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>

                                <ul class="category-images">
                                    <li class="grid">

                                        <span class="vc_row-overlay"
                                              style="background-color: rgba(0,0,0,0.1) !important;"></span>
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/prom1-3.jpg"
                                                 alt="Women">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div data-vc-full-width="true" data-vc-full-width-init="false"
                     class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-Disabled carousel-in-row-disabled vc_custom_1502188102648">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="clearfix">
                                    <h3 class="heading-line-long">PHONES SALE</h3>
                                </div>


                                <div class="woocommerce columns-4 ">

                                    <div class="custom-nav-mod">
                                        <div class="slider-nav">
                                            <a class="slider-prev best_selling_products-prev"><i
                                                    class="fa fa-chevron-left"></i></a>
                                            <span class="nav-divider"></span>
                                            <a class="slider-next best_selling_products-next"><i
                                                    class="fa fa-chevron-right"></i></a>
                                        </div>
                                    </div>

                                    <div class="b-related bestseller-home wow fadeInUp enable-owl-carousel-ul"
                                         data-loop="true" data-auto-width="false" data-dots="false" data-nav="false"
                                         data-margin="30" data-responsive-class="true"
                                         data-responsive='{"0":{"items":1},"479":{"items":2},"768":{"items":3},"1199":{"items":4}}'
                                         data-slider-next=".best_selling_products-next"
                                         data-slider-prev=".best_selling_products-prev">


                                        <div class="  clearfix b-grid row ">
                                            <ul class="products-grid ">

                                                <c:forEach var="itemProduct" items="${productListSale}">

                                                    <li class="isotope-item col-sm-4 accessories cases exclusive-phones unlocked-phones ">
                                                        <div class="item-grid b-item-card post-2977 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-carrier-phones product_cat-cases product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7 last instock featured shipping-taxable purchasable product-type-simple">
                                                            <div class="image">


                                                                <a href="/viewProduct.html?id=${itemProduct.id}">

                                                                    <c:forEach var="cate" items="${itemProduct.category}">
                                                                        <c:if test="${cate.id==1}">
                                                                            <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                                            <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                                        </c:if>

                                                                    </c:forEach>
                                                                    <img width="470" height="450"
                                                                         src="${itemProduct.IMG}"
                                                                         class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                                         alt=""/> </a>


                                                                    <%--<a class="slider_img"
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
                                                                           href="/viewProduct.html?id=${itemProduct.id}">${itemProduct.name}</a>
                                                                    </div>
                                                                    <span class="product-price card-price-block">
					<span class="price-title">Price</span>

	<span class="price">



          <c:set var="test" value="1"/>
    <c:forEach var="cate" items="${itemProduct.category}">
        <c:if test="${cate.id==1}">
    <del><span class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;</span>${itemProduct.price}</span></del> <ins><span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${itemProduct.price - (itemProduct.price /100 * cate.value)}</span>
         <c:set var="test"/>
        </c:if>
    </c:forEach>
<c:if test="${not empty test}">
    <span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${itemProduct.price}</span>
</c:if>

          <c:set var="test" value="1"/>



    </span>
				</span>
                                                                    <div class="rating">

                                                                        <div class="star-rating"><span
                                                                                style="width:59540%">Rated <strong
                                                                                class="rating">2977</strong> out of 5</span>
                                                                        </div>
                                                                        <div class="add-review">
                                                                            <span><span class="review-counter">0</span>Review(s)</span>
                                                                            <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/#comments">Add
                                                                                Your Review</a>
                                                                        </div>
                                                                    </div>

                                                                    <div class="product-description">
                                                                        <p>Ut enim ad minim veniam quis nostrud exercita
                                                                            tion ullamco laboris nisi aliquip exa
                                                                            commodo
                                                                            consequat. Duis aute irure dolor in
                                                                            reprehenderit in voluptate velit esse cillum
                                                                            dolore eu fugiat nulla pariatur</p>
                                                                    </div>

                                                                </div>


                                                                <div class="add-buttons">


                                                                    <a href="/viewProduct.html?id=${itemProduct.id}"
                                                                       class="btn btn-add btn-add-quickview">
                                                                        <i class="fa fa-eye"></i>
                                                                    </a>


                                                                        <%--                         <a class="btn btn-add btn-add-compare"><i
                                                                                                         class="fa fa-refresh"></i></a>
                                                                                                 <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                                                                                    class="btn btn-add btn-add-wish">
                                                                                                     <i class="fa fa-heart-o"></i>
                                                                                                 </a>--%>


                                                                    <a href="/wordpress/ismiler/?add-to-cart=2977"
                                                                       rel="nofollow" data-product_id="2977"
                                                                       data-product_sku="" data-quantity="1"
                                                                       class="btn btn-add btn-add-cart"> <i
                                                                            class="fa fa-shopping-bag"></i>
                                                                    </a>

                                                                    <div class="cart-add-buttons">

                                                                        <a href="/wordpress/ismiler/?add-to-cart=2977"
                                                                           rel="nofollow" data-product_id="2977"
                                                                           data-product_sku="" data-quantity="1"
                                                                           class="btn "> <i
                                                                                class="fa fa-shopping-cart"></i>
                                                                            add to cart</a>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>


                                                </c:forEach>


                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                    <%--      <div class="wpb_column vc_column_container vc_col-sm-4">
                              <div class="vc_column-inner ">
                                  <div class="wpb_wrapper">

                                      <div class="b-hot-deal woocommerce">
                                          <div class="product-item_sale deal">
                                              <span>sale</span>
                                          </div>
                                          <div class="hot-deal-card">
                                              <h3 class="heading-line">WEEK`S HOT DEAL</h3>
                                              <div class="image">
                                                  <a href="http://wpsparrow.com/wordpress/ismiler/product/ludum-mutavit/">
                                                      <img width="300" height="300"
                                                           src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-300x300.jpg"
                                                           class="img-responsive center-block wp-post-image" alt=""
                                                           srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-300x300.jpg 300w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-150x150.jpg 150w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-60x60.jpg 60w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1-100x100.jpg 100w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/815gN9Ip-mL._SX522_56-1.jpg 522w"
                                                           sizes="(max-width: 300px) 100vw, 300px"/> </a>
                                              </div>

                                              <div class="countdown dsCountDown ds-custom"
                                                   data-end-date="February 12, 2020 23:59:00" data-theme="custom"
                                                   data-title-days="DAY" data-title-hours="HRS" data-title-minutes="MINS"
                                                   data-title-seconds="SECS">
                                              </div>
                                              <div class="card-info">
                                                  <div class="caption">
                                                      <div class="name-item">
                                                          <a class="product-name"
                                                             href="http://wpsparrow.com/wordpress/ismiler/product/ludum-mutavit/">Apple
                                                              iPhone 6s Plus</a>

                                                          <div class="star-rating"><span style="width:40680%">Rated <strong
                                                                  class="rating">2034</strong> out of 5</span></div>
                                                      </div>
                                                      <div class="deal-prices clearfix">
                                                          <div class="deal pull-left">
                                                              <span>deal price</span>
                                                              <br>
                                                              <span class="product-price"><span
                                                                      class="woocommerce-Price-amount amount"><span
                                                                      class="woocommerce-Price-currencySymbol">&pound;</span>560.00</span></span>
                                                          </div>
                                                          <div class="regular pull-right">
                                                              <span>regular price</span>
                                                              <br>
                                                              <span class="product-price-old"><span
                                                                      class="woocommerce-Price-amount amount"><span
                                                                      class="woocommerce-Price-currencySymbol">&pound;</span>600.00</span></span>
                                                          </div>
                                                      </div>
                                                  </div>
                                                  <div class="cart-add-buttons">
                                                      <a href="?add-to-cart=2034" id="add-cart1" rel="nofollow"
                                                         data-product_id="2034" data-product_sku="3445" data-quantity="1"
                                                         class="btn btn-add-cart-full"> <span><i
                                                              class="fa fa-shopping-cart"></i></span>add to cart
                                                      </a>

                                                  </div>
                                              </div>
                                          </div>
                                      </div>

                                  </div>
                              </div>
                          </div>--%>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>




                <div class="vc_row-full-width"></div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div data-vc-full-width="true" data-vc-full-width-init="false"
                     class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled vc_custom_1470158082823">
                    <div class="wpb_column vc_column_container vc_col-sm-4">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <ul class="category-images">
                                    <li class="grid">
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/rowb-3.jpg"
                                                 alt="">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                    <div class="wpb_column vc_column_container vc_col-sm-4">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <ul class="category-images">
                                    <li class="grid">
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/rowb-2.jpg"
                                                 alt="">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                    <div class="wpb_column vc_column_container vc_col-sm-4">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <ul class="category-images">
                                    <li class="grid">
                                        <figure class="effect-bubba wow fadeInLeft" data-wow-delay="0.3s">
                                            <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/10/rowb-1.jpg"
                                                 alt="">
                                            <figcaption>

                                            </figcaption>
                                        </figure>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                <div class="vc_row-full-width"></div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled vc_custom_1470204476274">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="clearfix">
                                    <h3 class="heading-line-long">PHONES BY CATEGORIES</h3>
                                </div>


                                <div class="b-brand-filters">
                                    <ul id="filter"
                                        class="product-filter col-sm-12 tags-buttons list-inline by-brands-buttons clearfix">
                                        <li><a onclick="clickGetSaleCATEGORIES(null,null)"
                                               class="btn btn-tag font-additional font-weight-normal text-uppercase hover-focus-bg current"
                                               data-filter="*">All products</a></li>
                                        <li class="cat-item cat-item-151"><a
                                                onclick="clickGetSaleCATEGORIES(1,13)"
                                                class="btn btn-tag  font-additional font-weight-normal text-uppercase hover-focus-bg">SaLe</a>
                                        </li>
                                        <li class="cat-item cat-item-149"><a onclick="clickGetSaleCATEGORIES(2,13)"
                                                                             class="btn btn-tag  font-additional font-weight-normal text-uppercase hover-focus-bg">Hot
                                            </a>
                                        </li>
                                        <%--    <li class="cat-item cat-item-152"><a href="#"
                                                                             class="btn btn-tag  font-additional font-weight-normal text-uppercase hover-focus-bg">Cases</a>
                                        </li>
                                        <li class="cat-item cat-item-150"><a href="#"
                                                                             class="btn btn-tag  font-additional font-weight-normal text-uppercase hover-focus-bg">Exclusive
                                            Phones</a>
                                        </li>
                                        <li class="cat-item cat-item-153"><a href="#"
                                                                             class="btn btn-tag  font-additional font-weight-normal text-uppercase hover-focus-bg">Unlocked
                                            Phones</a>
                                        </li>--%>
                                    </ul>
                                </div>
                                <div class="isotope-frame">
                                    <ul class="isotope-filter products-grid row">

                                        <div id="iphoneByCATEGORIES">
                                            <c:forEach var="item" items="${itemAll}" begin="0" end="11">
                                                <li class="isotope-item col-sm-4 accessories carrier-phones cases  <c:forEach var="item2" items="${item.category}" begin="0" end="10">
                                                ${item2.name}
</c:forEach> ">
                                                    <div class="first item-grid b-item-card post-2977 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-carrier-phones product_cat-cases product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7  instock featured shipping-taxable purchasable product-type-simple">
                                                        <div class="image">

                                                            <c:forEach var="cate" items="${item.category}">
                                                                <c:if test="${cate.id==1}">
                                                                    <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                                    <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span> </c:if>

                                                            </c:forEach>
                                                            <a href="/viewProduct.html?id=${item.id}">
                                                                <img width="470" height="450"
                                                                     src="${item.IMG}"
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


    </ins>


    </span>





    </span>
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


                                           <%--                     <a class="btn btn-add btn-add-compare"><i
                                                                        class="fa fa-refresh"></i></a>
                                                                <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                                                   class="btn btn-add btn-add-wish">
                                                                    <i class="fa fa-heart-o"></i>
                                                                </a>--%>


                                                                <a href="/wordpress/ismiler/?add-to-cart=2977"
                                                                   rel="nofollow"
                                                                   data-product_id="2977" data-product_sku=""
                                                                   data-quantity="1"
                                                                   class="btn btn-add btn-add-cart"> <i
                                                                        class="fa fa-shopping-bag"></i>
                                                                </a>

                                                                <div class="cart-add-buttons">

                                                                    <a href="/wordpress/ismiler/?add-to-cart=2977"
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

                                        </div>


                                    </ul>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>

                <c:if test="${not empty productListBestSellers}">
                    <div class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled vc_custom_1502193424664">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="clearfix">
                                        <h3 class="heading-line-long">BEST SELLERS</h3>
                                    </div>


                                    <div class="woocommerce columns-4 ">

                                        <div class="custom-nav-mod">
                                            <div class="slider-nav">
                                                <a class="slider-prev best_selling_products-prev"><i
                                                        class="fa fa-chevron-left"></i></a>
                                                <span class="nav-divider"></span>
                                                <a class="slider-next best_selling_products-next"><i
                                                        class="fa fa-chevron-right"></i></a>
                                            </div>
                                        </div>

                                        <div class="b-related bestseller-home wow fadeInUp enable-owl-carousel-ul"
                                             data-loop="true" data-auto-width="false" data-dots="false" data-nav="false"
                                             data-margin="30" data-responsive-class="true"
                                             data-responsive='{"0":{"items":1},"479":{"items":2},"768":{"items":3},"1199":{"items":4}}'
                                             data-slider-next=".best_selling_products-next"
                                             data-slider-prev=".best_selling_products-prev">


                                            <div class="  clearfix b-grid row ">
                                                <ul class="products-grid ">

                                                    <c:forEach var="itemProduct" items="${productListBestSellers}">

                                                        <li class="isotope-item col-sm-4 accessories cases exclusive-phones unlocked-phones ">
                                                            <div class="item-grid b-item-card post-2977 product type-product status-publish has-post-thumbnail product_cat-accessories product_cat-carrier-phones product_cat-cases product_cat-unlocked-phones product_tag-accessories product_tag-android product_tag-apple product_tag-cases product_tag-iphone product_tag-nokia product_tag-premium product_tag-smart product_tag-unlocked yith_product_brand-brand1 yith_product_brand-brand2 yith_product_brand-brand4 yith_product_brand-brand5 yith_product_brand-brand6 yith_product_brand-brand7 last instock featured shipping-taxable purchasable product-type-simple">
                                                                <div class="image">


                                                                    <a href="/viewProduct.html?id=${itemProduct.id}">

                                                                        <c:forEach var="cate" items="${itemProduct.category}">
                                                                            <c:if test="${cate.id==1}">
                                                                                <span class="product-item_sale sale color-main font-additional customBgColor circle"><span>${cate.name}</span></span>
                                                                                <span class="product-item_sale_value sale color-main font-additional customBgColor circle"><span>-${cate.value}%</span></span>
                                                                            </c:if>

                                                                        </c:forEach>
                                                                        <img width="470" height="450"
                                                                             src="${itemProduct.IMG}"
                                                                             class="attachment-shop_catalog size-shop_catalog wp-post-image"
                                                                             alt=""/> </a>


                                                                        <%--<a class="slider_img"
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
                                                                               href="/viewProduct.html?id=${itemProduct.id}">${itemProduct.name}</a>
                                                                        </div>
                                                                        <span class="product-price card-price-block">
					<span class="price-title">Price</span>

	<span class="price">



          <c:set var="test" value="1"/>
    <c:forEach var="cate" items="${itemProduct.category}">
        <c:if test="${cate.id==1}">
    <del><span class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;</span>${itemProduct.price}</span></del> <ins><span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${itemProduct.price - (itemProduct.price /100 * cate.value)}</span>
         <c:set var="test"/>
        </c:if>
    </c:forEach>
<c:if test="${not empty test}">
    <span
            class="woocommerce-Price-amount amount"><span
            class="woocommerce-Price-currencySymbol">&pound;
                </span>${itemProduct.price}</span>
</c:if>

          <c:set var="test" value="1"/>



    </span>
				</span>
                                                                        <div class="rating">

                                                                            <div class="star-rating"><span
                                                                                    style="width:59540%">Rated <strong
                                                                                    class="rating">2977</strong> out of 5</span>
                                                                            </div>
                                                                            <div class="add-review">
                                                                                <span><span class="review-counter">0</span>Review(s)</span>
                                                                                <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/#comments">Add
                                                                                    Your Review</a>
                                                                            </div>
                                                                        </div>

                                                                        <div class="product-description">
                                                                            <p>Ut enim ad minim veniam quis nostrud exercita
                                                                                tion ullamco laboris nisi aliquip exa
                                                                                commodo
                                                                                consequat. Duis aute irure dolor in
                                                                                reprehenderit in voluptate velit esse cillum
                                                                                dolore eu fugiat nulla pariatur</p>
                                                                        </div>

                                                                    </div>


                                                                    <div class="add-buttons">


                                                                        <a href="/viewProduct.html?id=${itemProduct.id}"
                                                                           class="btn btn-add btn-add-quickview">
                                                                            <i class="fa fa-eye"></i>
                                                                        </a>


                                                                            <%--                         <a class="btn btn-add btn-add-compare"><i
                                                                                                             class="fa fa-refresh"></i></a>
                                                                                                     <a href="http://wpsparrow.com/wordpress/ismiler/product/blu-vivo-5-smartphone/?add_to_wishlist=2977"
                                                                                                        class="btn btn-add btn-add-wish">
                                                                                                         <i class="fa fa-heart-o"></i>
                                                                                                     </a>--%>


                                                                        <a href="/wordpress/ismiler/?add-to-cart=2977"
                                                                           rel="nofollow" data-product_id="2977"
                                                                           data-product_sku="" data-quantity="1"
                                                                           class="btn btn-add btn-add-cart"> <i
                                                                                class="fa fa-shopping-bag"></i>
                                                                        </a>

                                                                        <div class="cart-add-buttons">

                                                                            <a href="/wordpress/ismiler/?add-to-cart=2977"
                                                                               rel="nofollow" data-product_id="2977"
                                                                               data-product_sku="" data-quantity="1"
                                                                               class="btn "> <i
                                                                                    class="fa fa-shopping-cart"></i>
                                                                                add to cart</a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>


                                                    </c:forEach>


                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                             data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                    </div>

                </c:if>


                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor">
                    <div class="wrap-anchor">
                        <a href="#posts-reviews">
                            <div class="top-icon-block"></div>
                        </a>
                    </div>
                </div>

             <%--   <div id="posts-reviews" data-vc-full-width="true" data-vc-full-width-init="false"
                     class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled reveral-scroll scroll-animate vc_custom_1479384823419">
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">
                                <div class="clearfix">
                                    <h3 class="heading-line-long">Smartphone Blog</h3>
                                </div>


                                <div class="vc_row wpb_row vc_inner vc_row-fluid">
                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">


                                                <div class="b-posts-holder row clearfix">


                                                    <div class="b-post-preview col-xs-12 col-sm-4 col-md-4 col-lg-4 clearfix wow fadeInLeft"
                                                         style="visibility: visible; animation-name: fadeInLeft;">
                                                        <div class="post-image">
                                                            <div class="post-img-holder">
                                                                <div>

                                                                    <img width="320" height="181"
                                                                         src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3.jpg"
                                                                         class="img-responsive center-block wp-post-image"
                                                                         alt=""
                                                                         srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3.jpg 620w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3-300x169.jpg 300w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3-106x60.jpg 106w"
                                                                         sizes="(max-width: 320px) 100vw, 320px"/>

                                                                    <div class="image-add">
                                                                        <a href="http://wpsparrow.com/wordpress/ismiler/2016/01/27/void-beast-moving-wherein-also-replenish/"
                                                                           class="btn btn-default-color1 btn-sm">view
                                                                            more</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="post-data">
                                                                <span>27 Jan 2016</span>
                                                            </div>
                                                        </div>
                                                        <div class="post-caption">
                                                            <div class="post-author">
                                                                <span><i class="fa fa-comment-o"></i>4 comment(s)</span>
                                                            </div>
                                                            <div class="caption">
                                                                <h5 class="heading-line">Multiply letre Leser</h5>
                                                                <div class="post-description">
                                                                    <p>
                                                                        Proin est elentesque risus magna vulputate vitae
                                                                        sodales uam morbi non sem lacus porta mollis.
                                                                        Nunc condime ntum metus eud In molestie sed
                                                                        consecte lorem&hellip; </p>
                                                                </div>
                                                            </div>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/2016/01/27/void-beast-moving-wherein-also-replenish/">read
                                                                more</a>
                                                        </div>
                                                    </div>


                                                    <div class="b-post-preview col-xs-12 col-sm-4 col-md-4 col-lg-4 clearfix wow fadeInLeft"
                                                         style="visibility: visible; animation-name: fadeInLeft;">
                                                        <div class="post-image">
                                                            <div class="post-img-holder">
                                                                <div>

                                                                    <img width="320" height="184"
                                                                         src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/486082-microsoft-lumia-950.jpg"
                                                                         class="img-responsive center-block wp-post-image"
                                                                         alt=""
                                                                         srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/486082-microsoft-lumia-950.jpg 740w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/486082-microsoft-lumia-950-300x173.jpg 300w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/486082-microsoft-lumia-950-104x60.jpg 104w"
                                                                         sizes="(max-width: 320px) 100vw, 320px"/>

                                                                    <div class="image-add">
                                                                        <a href="http://wpsparrow.com/wordpress/ismiler/2015/12/10/minim-veniam-quis-nostrud-exercita-tion-ullamco-laboris/"
                                                                           class="btn btn-default-color1 btn-sm">view
                                                                            more</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="post-data">
                                                                <span>10 Dec 2015</span>
                                                            </div>
                                                        </div>
                                                        <div class="post-caption">
                                                            <div class="post-author">
                                                                <span><i class="fa fa-comment-o"></i>2 comment(s)</span>
                                                            </div>
                                                            <div class="caption">
                                                                <h5 class="heading-line">Sixth replenish one rule</h5>
                                                                <div class="post-description">
                                                                    <p>
                                                                        Proin est elentesque risus magna vulputate vitae
                                                                        sodales uam morbi non sem lacus porta mollis.
                                                                        Nunc condime ntum metus eud In molestie sed
                                                                        consecte lorem&hellip; </p>
                                                                </div>
                                                            </div>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/2015/12/10/minim-veniam-quis-nostrud-exercita-tion-ullamco-laboris/">read
                                                                more</a>
                                                        </div>
                                                    </div>


                                                    <div class="b-post-preview col-xs-12 col-sm-4 col-md-4 col-lg-4 clearfix wow fadeInLeft"
                                                         style="visibility: visible; animation-name: fadeInLeft;">
                                                        <div class="post-image">
                                                            <div class="post-img-holder">
                                                                <div>

                                                                    <img width="320" height="181"
                                                                         src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3.jpg"
                                                                         class="img-responsive center-block wp-post-image"
                                                                         alt=""
                                                                         srcset="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3.jpg 620w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3-300x169.jpg 300w, http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2015/12/lumia-950-3-106x60.jpg 106w"
                                                                         sizes="(max-width: 320px) 100vw, 320px"/>

                                                                    <div class="image-add">
                                                                        <a href="http://wpsparrow.com/wordpress/ismiler/2015/12/10/likeness-good/"
                                                                           class="btn btn-default-color1 btn-sm">view
                                                                            more</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="post-data">
                                                                <span>10 Dec 2015</span>
                                                            </div>
                                                        </div>
                                                        <div class="post-caption">
                                                            <div class="post-author">
                                                                <span><i class="fa fa-comment-o"></i>2 comment(s)</span>
                                                            </div>
                                                            <div class="caption">
                                                                <h5 class="heading-line">Likeness good</h5>
                                                                <div class="post-description">
                                                                    <p>
                                                                        Proin est elentesque risus magna vulputate vitae
                                                                        sodales uam morbi non sem lacus porta mollis.
                                                                        Nunc condime ntum metus eud In molestie sed
                                                                        consecte lorem&hellip; </p>
                                                                </div>
                                                            </div>
                                                            <a href="http://wpsparrow.com/wordpress/ismiler/2015/12/10/likeness-good/">read
                                                                more</a>
                                                        </div>
                                                    </div>

                                                </div>


                                            </div>
                                        </div>
                                    </div>
                                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                                </div>
                                <div class="kswr-row-element-back"
                                     data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                --%>
                <div class="vc_row-full-width"></div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
                <div class="vc_row_anchor js_stretch_anchor"></div>
                <div data-vc-parallax="1.5"
                     class="vc_row wpb_row vc_row-fluid vc_row-padding-both carousel-type-None carousel-in-row-enabled text-white vc_general vc_parallax vc_parallax-content-moving">
                    <span class="vc_row-overlay" style="background-color: rgba(0,0,0,0.2) !important;"></span>
                    <div class="wpb_column vc_column_container vc_col-sm-12">
                        <div class="vc_column-inner ">
                            <div class="wpb_wrapper">

                                <div class="b-brands-holder">
                                    <div class="b-store-features b-brands-logos clearfix wow bounceInUp">
                                        <ul id="brands-slide" class="list-unstyled enable-owl-carousel" data-loop="true"
                                            data-auto-width="false" data-dots="true" data-nav="false" data-margin="0"
                                            data-responsive-class="true"
                                            data-responsive='{"0":{"items": "1"},"479":{"items": "2"},"992":{"items": "3"},"1199":{"items":"6","autoWidth":"true"}}'
                                            data-slider-next="" data-slider-prev="">

                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand1.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand2.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand4.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand3.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand5.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand6.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                            <li>
                                                <a href="/" class="brand-item fadeInLeft">
                                                    <img src="http://wpsparrow.com/wordpress/ismiler/wp-content/uploads/2017/08/brand4.jpg"
                                                         alt="" class="img-responsive center-block">
                                                </a>
                                            </li>


                                        </ul>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="kswr-column-settings" data-minheight="0px" data-isminheight="off"
                         data-theclasses="kswr_pnone kswr_mnone kswr_bnone"></div>
                </div>
                <div class="kswr-row-element-back" data-classes="kswr_pnone kswr_mnone kswr_bnone"></div>
            </div>
        </div>
        <jsp:include page="/jsp/layout/footer.jsp"/>
    </div>
    <jsp:include page="/jsp/layout/js-footer.jsp"/>
</div>
<script type="text/javascript">
    function clickGetSaleCATEGORIES(idCategories, limit) {
        var data = {'id': idCategories, 'limit': limit};
        $.ajax({
            url: "/getCategories?${_csrf.parameterName}=${_csrf.token}",
            type: "post",
            dataType: "text",
            data: data,
            success: function (result) {
                $('#iphoneByCATEGORIES').html(result);
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
</body>
</html>
