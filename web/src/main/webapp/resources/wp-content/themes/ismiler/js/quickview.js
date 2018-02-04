/**
 * Created by vinc
 */

jQuery(document).ready(function(jQuery) {
    if (_quickViewEnabled == true){
        jQuery('a.quickview-list').on('click',function(event){
            event.stopPropagation();
            event.preventDefault();
            showAjaxLoader();
            var _href = jQuery(this).attr('href');


            //console.log(jQuery(this).attr('href') + '?quickview=1');

            jQuery.ajax({
                url: jQuery(this).attr('href') + '?quickview=1',
                type: "GET",
                success: function( response ){
                    hideAjaxLoader();
                    parseQuickViewResponse(response,_href);
                }
            });

        });

    }

});

function showAjaxLoader(){

}

function hideAjaxLoader(){

}

function parseQuickViewResponse(response,href){

    var _responseObject = jQuery(response);
    _responseObject.find('.product-brand:first').remove();

    _responseObject.find('#image-block img').parent().attr('href',href);


    _responseObject.find('.product-options_footer').remove();

    _responseObject.find('.product-cart:first').removeClass('col-lg-5');
    _responseObject.find('.product-cart:first').addClass('col-lg-8');


    var _content = _responseObject.find('.product-details:first').html();


    _content.replace('col-lg-5','col-lg-8');
	//_content.replace('container','');
	

    jQuery.fancybox({
        'content': _content,
      //  'width': 900,
        'autoDimensions': true,
        'autoSize':false
    });


    jQuery.fancybox.update();

    if (jQuery('.enable-bx-slider').length > 0) {


        jQuery('#carousel').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 118,
            itemMargin: 4,
            asNavFor: '#slider-product'
        });

        var bxSliderBox = jQuery('.enable-bx-slider');
			if(bxSliderBox && bxSliderBox.length){
				bxSliderBox.each(function(i) {
					var jQuerybx = jQuery(this);

					var pagerCustomData = jQuerybx.data('pager-custom');
					var controlsData = jQuerybx.data('controls');
					var minSlidesData = jQuerybx.data('min-slides');
					var maxSlidesData = jQuerybx.data('max-slides');
					var slideWidthData = jQuerybx.data('slide-width');
					var slideMarginData = jQuerybx.data('slide-margin');
					var pagerData = jQuerybx.data('pager');
					var modeData = jQuerybx.data('mode');
					var infiniteLoopData = jQuerybx.data('infinite-loop');

					jQuerybx.bxSlider({
						pagerCustom: pagerCustomData,
						controls: controlsData,
						minSlides: minSlidesData,
						maxSlides: maxSlidesData,
						slideWidth: slideWidthData,
						slideMargin: slideMarginData,
						pager: pagerData,
						mode: modeData,
						infiniteLoop: infiniteLoopData,
						prevText: (modeData == 'vertical' ? '<span class="fa fa-angle-up"></span>' : '<span class="fa fa-angle-left"></span>'),
						nextText: (modeData == 'vertical' ? '<span class="fa fa-angle-down"></span>' : '<span class="fa fa-angle-right"></span>'),
					});
				});
			}


    }





    /////////////////////////////////////
    //  Zoom Images
    /////////////////////////////////////

    jQuery("a[rel^='prettyPhoto']").prettyPhoto();


    jQuery('.single_add_to_cart_button').attr('onClick','addFromQuickView("'+href+'?add-to-cart='+jQuery('input[name=add-to-cart]').val()+'")')



}


