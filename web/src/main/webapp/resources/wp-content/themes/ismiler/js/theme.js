/*------------------------------------------------------------------
[Table of contents]

 - Project:	Seven Store 
 - Author: Templines
 - Profile: Templines.com
 
--*/

(function($) {

	"use strict";
	
	
	
	/*------------------------------------------------------------------
[Table of contents]

- Project:	iSmile - Phones Market HTML/CSS Template
- Version:	1.1
- Author:  Andrey Sokoltsov
- Profile:	http://themeforest.net/user/andreysokoltsov
--*/


 

	var Core = {

		initialized: false,

		initialize: function() {

			if (this.initialized) return;
			this.initialized = true;

			this.build();

		},

		build: function() { 
			
			//Placeholder for IE
	//		$('input, textarea').placeholder();

			// Page preloader
			this.initPagePreloader();
			
			//Count Down
			this.initCountDown();

			//Setup WOW.js
		//	this.initScrollAnimations();

			// Pretty Photo Gallery
			//this.initPrettyPhoto();

			// Switch grid
			this.gridSwitcher();

			// Slider range
			this.initSliderRange();

			// Tooltip
			this.initTooltip();

			// Load more
			this.loadMore();

			// Search Field Animation
			this.initSearchAnimation();

			// Select product color
			this.selectProductColor();

			// Mobile Menu
			this.mobileMenu();

			// Accordion
			//this.initAccordion();

			//Isotope Filter
			this.isotopeFilter();
			

			// Owl Carousel
			this.initOwlCarousel();
            
            // bxSlider
			this.initBxSlider();
			
			// Main Slider
			this.initMainSlider();
		},

		initPagePreloader: function(options) {
			var $preloader = $('#page-preloader'),
			$spinner = $preloader.find('.spinner-loader');
			$( window ).on('load', function() {
				$spinner.fadeOut();
				$preloader.delay(500).fadeOut('slow');
				window.scrollTo( 0, 0 );
			});
		},

		initCountDown: function(options) {
			var $countdown = $( '.countdown' );
			if($countdown && $countdown.length){
				$countdown.each(function(i) {
					var $countdownItem = $(this);
					
					var endDateData = $countdownItem.data('end-date');
					var themeData = $countdownItem.data('theme');
					var titleDaysData = $countdownItem.data('title-days');
					var titleHoursData = $countdownItem.data('title-hours');
					var titleMinutesData = $countdownItem.data('title-minutes');
					var titleSecondsData = $countdownItem.data('title-seconds');
					
					$countdownItem.dsCountDown({
						endDate: new Date(endDateData),
						theme: themeData,
						titleDays: titleDaysData,
						titleHours: titleHoursData,
						titleMinutes: titleMinutesData,
						titleSeconds: titleSecondsData
					});
				});
			}
		},
  
 
        

		initPrettyPhoto: function(options) {
			$("a[data-gal^='prettyPhoto']").prettyPhoto({
				social_tools: false,
			});
		},
        
        
        
        
        

		initSliderRange: function(options) {
			$('#price-min').change(function () {
				var val = $(this).val();
				$('#slider-range').slider("values",0,val);
			});

			$('#price-max').change( function() {
				var val2 = $(this).val();
				$('#slider-range').slider("values",1,val2);
			});

			$( "#slider-range" ).slider({
				range: true,
				min: 0,
				max: 1550,
				values: [ 55, 550 ],
				slide: function( event, ui ) {
					$('#price-min').val("$" + ui.values[0]);
					$('#price-max').val("$" + ui.values[1]);
				}
			});
			$('#price-min').val("$" + $('#slider-range').slider("values",0));
			$('#price-max').val("$" + $('#slider-range').slider("values",1));
		},

		initTooltip: function(options) {
			$('[data-toggle="tooltip"]').tooltip();
		},

		loadMore: function(options) {
			$(".more-list").hide();
			$(".load-more").click(function(){
				$(this).next().slideToggle().siblings('div:visible').slideUp();
				$(this).hide();
			});
		},

		initSearchAnimation: function(options) {
			$(".iconSearch").on('click', function(e){
				e.preventDefault();
				$('#search').fadeToggle();
			});			
		},

		selectProductColor: function(options) {
			$(".colors-item").on('click', function(e){
				e.preventDefault();
				$(this).parent('li').toggleClass('active');
			});
		},

		mobileMenu: function(options) {
			$(".toggle-nav-btn .btn-menu").click(function () {
				$(this).parent('div').toggleClass('active');
				$('.b-header-menu').toggle().toggleClass("menu-show");
			});
		},

		initAccordion: function(options) {
			var accordionBox = $('.enable-accordion');
			if(accordionBox && accordionBox.length){
				accordionBox.each(function(i) {
					var $accordion = $(this);

					var heightStyleData = $accordion.data('height-style');
					var collapsibleData = $accordion.data('collapsible');
					var activeData = $accordion.data('active');

					if ($accordion.find('h3').length) {
						$accordion.accordion({
							heightStyle: heightStyleData,
							collapsible: collapsibleData,
							active: activeData,
						});
					}
				});
			}
		},

		gridSwitcher: function(options) {
			$("#type-of-display li .toogle-view").click(function(e) {
				e.preventDefault();
				$("#type-of-display li .toogle-view").removeClass('active-view');
				$(this).addClass('active-view');
			})

			$("#type-of-display .grid-3").click(function(e) {
				e.preventDefault();
				$(".b-grid").removeClass('b-grid-list');
			})

			$("#type-of-display .grid-list").click(function(e) {
				e.preventDefault();
				$(".b-grid").addClass('b-grid-list');
			})
		},

		isotopeFilter: function(options) {
			var $container = jQuery('.isotope-filter');

			$container.imagesLoaded(function() {
				$container.isotope({
					// options
					filter: '*',
					itemSelector: '.isotope-item'
				});
			});

			// filter items when filter link is clicked
			jQuery('#filter').on('click', 'a', function() {
				jQuery('#filter  a').removeClass('current');
				jQuery(this).addClass('current');
				//var $container = jQuery('.isotope-filter');
				var selector = jQuery(this).attr('data-filter');
				jQuery('.isotope-filter').isotope({
					filter: selector
				});
				return false;
			});
			
			
		},

		initBxSlider: function(options) {
			var bxSliderBox = $('.enable-bx-slider');
			if(bxSliderBox && bxSliderBox.length){
                
				bxSliderBox.each(function(i) {
					var $bx = $(this);

					var pagerCustomData = $bx.data('pager-custom');
					var controlsData = $bx.data('controls');
					var minSlidesData = $bx.data('min-slides');
					var maxSlidesData = $bx.data('max-slides');
					var slideWidthData = $bx.data('slide-width');
					var slideMarginData = $bx.data('slide-margin');
					var pagerData = $bx.data('pager');
					var modeData = $bx.data('mode');
					var infiniteLoopData = $bx.data('infinite-loop');

					$bx.bxSlider({
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
		},

		initOwlCarousel: function(options) {
			var owlCarouselBox = $(' .enable-owl-carousel-ul ul , .enable-owl-carousel');
			if(owlCarouselBox && owlCarouselBox.length){
				owlCarouselBox.each(function(i) {
					var $owl = $(this);
					if ($(this).parent().parent().hasClass('enable-owl-carousel-ul')) {
						var $owldata = $(this).parent().parent();
			 
					}	
					else {
						var $owldata = $(this); 
					}
					
					var _row = $owldata.closest('div.vc_row');
					if (_row.hasClass('carousel-in-row-disabled'))
						return;

					
					var loopData = true;
					var autoWidthData = $owldata.data('auto-width');
					var dotsData = $owldata.data('dots');
					var navData = $owldata.data('nav');
					var marginData = $owldata.data('margin');
					var responsiveClassData = $owldata.data('responsive-class');
					var responsiveData = $owldata.data('responsive');
					var sliderNext = $owldata.data('slider-next');
					var sliderPrev = $owldata.data('slider-prev');
 
					$owl.owlCarousel({
						loop: loopData,
						autoWidth: autoWidthData,
						dots: dotsData,
						nav: navData,
						margin: marginData,
						responsiveClass: responsiveClassData,
						responsive: responsiveData,
			 
					});
					$(sliderNext).click(function(){
						$owl.trigger('next.owl.carousel');
					});
					$(sliderPrev).click(function(){
						$owl.trigger('prev.owl.carousel');
					});
				});
			}
		},

		initMainSlider: function(options) {
			var $mainSlider = $( '.full-width-slider' );
			if($mainSlider && $mainSlider.length){
				$mainSlider.each(function(i) {
					var $proSlider = $(this);

					var widthData = $proSlider.data('width');
					var heightData = $proSlider.data('height');
					var fadeData = $proSlider.data('fade');
					var buttonsData = $proSlider.data('buttons');
					var waitForLayersData = $proSlider.data('wait-for-layers');
					var thumbnailPointerData = $proSlider.data('thumbnail-pointer');
					var touchSwipeData = $proSlider.data('touch-swipe');
					var autoplayData = $proSlider.data('autoplay');
					var autoScaleLayersData = $proSlider.data('auto-scale-layers');
					var visibleSizeData = $proSlider.data('visible-size');
					var forceSizeData = $proSlider.data('force-size');
					var autoplayDelayData = $proSlider.data('autoplay-delay');

					$proSlider.sliderPro({
						width: widthData,
						height: heightData,
						fade: fadeData,
						buttons: buttonsData,
						waitForLayers: waitForLayersData,
						thumbnailPointer: thumbnailPointerData,
						touchSwipe: touchSwipeData,
						autoplay: autoplayData,
						autoScaleLayers: autoScaleLayersData,
						visibleSize: visibleSizeData,
						forceSize: forceSizeData,
						autoplayDelay: autoplayDelayData
					});
				});
			}
		}


	};

	Core.initialize();

 
	
	
	
	/////////////////////////////////////////////////////////////////
// Preloader
/////////////////////////////////////////////////////////////////


    var $preloader = $('#page-preloader'),
    $spinner   = $preloader.find('.spinner-loader');
    $spinner.fadeOut();
    $preloader.delay(150).fadeOut('slow');
	
	
	
 
	  /////////////////////////////////////
    //  Scroll Animation
    /////////////////////////////////////




	
	
			
    ////////////////////////////////////////////  
    //  full-width
    ///////////////////////////////////////////  

	


 
        var windowWidth = $(window).width();
        var widthContainer = $('.container').width();

        var fullWidth1 = windowWidth - widthContainer;
        var fullWidth2 = fullWidth1 / 2;

        $('.js_stretch_anchor').css("width", windowWidth);
        $('.js_stretch_anchor').css("margin-left", -fullWidth2);	

	
	
	 
	 
	 setTimeout(
  function() 
  {
    $('.woocommerce-currency-switcher-form').css("opacity", '1');
  }, 1000);

	
	
	  $(".menu_item_wpglobus_menu_switch > .wpglobus_flag").click(function () {
      $(this).parent().toggleClass("wpglobus_menu_open");
    });
	
	
	
		


	
	   ////////////////////////////////////////////  
    //  WOOCOMMERCE CATALOG
    ///////////////////////////////////////////  
	
function showAjaxLoader(){
	
}

function hideAjaxLoader(){
	
}

function getNegativeCategoryViewClass(view_type){
	if (view_type == 'list'){
		return 'grid';
	}else{
		return 'list';
	}
}

function categoryViewClick(view_type){
	jQuery(".products-cat").css("display", "none");
	jQuery('.products-cat .products-grid').addClass(view_type + '-view');
	jQuery('.products-cat .products-grid').removeClass(getNegativeCategoryViewClass(view_type) + '-view');
	if (view_type == 'list'){
		jQuery.cookie("pix_cat_view_type", 1);
	}else{
		jQuery.cookie("pix_cat_view_type", 0);
	}


	jQuery('.products-cat li.item-' + view_type).show();
	jQuery('.products-cat li.item-' + getNegativeCategoryViewClass(view_type)).hide();
	jQuery(".products-cat").fadeIn(200);
}

var _headerGlobusMenu = jQuery('#header .menu_item_wpglobus_menu_switch a:first');
_headerGlobusMenu.removeAttr('href');
_headerGlobusMenu.attr('data-toggle',"dropdown");
_headerGlobusMenu.addClass('data-toggle',"dropdown-toggle");
_headerGlobusMenu.attr('href',"#");





 ////////////////////////////////////////////  
    //  WOOCOMMERCE GRID-LIST SWITCHER
    ///////////////////////////////////////////  

	$('.category-filter #list').click(function (event) {
		event.preventDefault();
		categoryViewClick('list');
	});
	$('.category-filter #grid').click(function (event) {
		event.preventDefault();
		categoryViewClick('grid');
	});

	$('.category-filter #list').click(function () {
		$(".products-cat").css("display", "none");
		$('#grid').removeClass("active");
		$('#grid').removeClass("customBgColor");
		$('#grid').removeClass("color-main");
		$(this).addClass("active");
		$(this).addClass("customBgColor");
		$(this).addClass("color-main");
		$(".products-cat").fadeIn(200);
	});
	$('.category-filter #grid').click(function () {
		$(".products-cat").css("display", "none");
		$('#list').removeClass("active");
		$('#list').removeClass("customBgColor");
		$('#list').removeClass("color-main");
		$(this).addClass("active");
		$(this).addClass("customBgColor");
		$(this).addClass("color-main");
		$(".products-cat").fadeIn(200);
	});




	if (typeof(jQuery.cookie('pix_cat_view_type')) != 'undefined'){
		if ($.cookie("pix_cat_view_type") == 0) {
			$('.category-filter #grid').click();
		} else {
			$('.category-filter #list').click();
		}
	}else{
		var lsType = jQuery('#default_category_listing_id').val();
		if (lsType == 'grid'){
			$('.category-filter #grid').click();
		}else{
			$('.category-filter #list').click();
		}
	}




	  /////////////////////////////////////
    //  Scroll Animation
    /////////////////////////////////////


/*	window.sr = ScrollReveal({
	mobile:false,
	reset:true,

    }
	);
	
	sr.reveal('.scroll-animate,.related.products , .blog-item');
	*/
	
	

	
		
    ////////////////////////////////////////////  
    //  Animate the scroll to top
    ///////////////////////////////////////////  


$(window).scroll(function(){
	if ($(window).scrollTop() > 400) {
		$('.goToTop').fadeIn()
	}
	else {
		$('.goToTop').fadeOut()
	}
})
  
  
$('.goToTop').click(function() {

    $('html,body').animate({
      scrollTop: 0
    }, 1000);
    return false;
 });

  

  $('.rev-btn[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });

	
	
	 ////////////////////////////////////////////  
    // SLIDER PRODUCTS
    ///////////////////////////////////////////  
    
    
    

    
    
   $(".carousel-post").bxSlider({
      adaptiveHeight: true
     });
    
    
       $(".carousel-catalog").bxSlider({
       adaptiveHeight: true
     });
    


    if ($('#slider-product').length > 0) {


        $('#carousel').flexslider({
            animation: "slide",
            controlNav: false,
            animationLoop: false,
            slideshow: false,
            itemWidth: 78,
            itemMargin: 4,
            asNavFor: '#slider-product'
        });

        $('#slider-product').flexslider({
            animation: "slide",
		/*	smoothHeight:true,*/
            controlNav: false,
            animationLoop: false,
            slideshow: false,
              smoothHeight:true,
            sync: "#carousel"
        });


    }
	
	

	
    /////////////////////////////////////
    //  Zoom Images
    /////////////////////////////////////
	
	


    if ($("a[rel^='prettyPhoto']").length > 0) {$("a[rel^='prettyPhoto']").prettyPhoto(); }
	
	
	 if ($('.prettyPhoto').length > 0) {$(".prettyPhoto").prettyPhoto(); }





    ////////////////////////////////////////////  
    //  full-width
    ///////////////////////////////////////////  


    function fullWidthSection() {

        var windowWidth = $(window).width();
        var widthContainer = $('.container').width();

        var fullWidth1 = windowWidth - widthContainer;
        var fullWidth2 = fullWidth1 / 2;

        $('.row-full-width').css("width", windowWidth);
        $('.row-full-width').css("margin-left", -fullWidth2);


    }

    fullWidthSection();
    $(window).resize(function() {
        fullWidthSection()
    });



         
 /////////////////////////////////////
    // CATEGORY SLIDER
    /////////////////////////////////////


    $('.category-slider').bxSlider({
        minSlides: 1, // item 5
        maxSlides: 1, // item 4
        slideWidth: 1250,
        infiniteLoop: true,
        auto: false,
        nextText: '',
        prevText: ''

    });

    $('.product_list_widget').bxSlider({
        minSlides: 3, // item 5
        maxSlides: 3, // item 4
        slideWidth: 350,
        infiniteLoop: true,
        slideMargin: 5,
        auto: true,
        mode: 'vertical',
        nextText: '',
        prevText: '',
        pagerSelector: '1'
    });




    $('.bx-next').html('<i class="fa fa-angle-right"></i>');
    $('.bx-prev').html(' <i class="fa fa-angle-left"></i>');

    $('.flex-next').html(' <i class="icomoon-arrow-right"></i>');
    $('.flex-prev').html(' <i class="icomoon-arrow-left"></i>');





	var Core = {

		initialized: false,

		initialize: function() {

			if (this.initialized) return;
			this.initialized = true;

			this.build();

		},

		build: function() {
			
			//Placeholder for IE
		/*	$('input, textarea').placeholder();*/

			// Dropdown menu
			this.dropdownhover();
			
			// Toggle header cart
			this.carttoggle();

			// Owl Carousel
			this.initOwlCarousel();

			//Isotope Filter
			this.isotopeFilter();

			//Isotope Filter
			this.initBxSlider();

 
			
			//Go to top animation
			this.goToTop();
			
			//Fixed Header
			this.fixedHeader();

			//Product Counter
			this.productCounter();
			
			//Mobile Menu Animation
			this.mainMenuSwitch();
		},

		dropdownhover: function(options) {
			/** Extra script for smoother navigation effect **/
			if ($(window).width() > 1) {
				$('.navbar-main-slide').on('mouseenter', '.navbar-nav > .dropdown', function() {
					"use strict";
					$(this).addClass('open');
				}).on('mouseleave', '.navbar-nav > .dropdown', function() {
					"use strict";
					$(this).removeClass('open');
				});
			}
		},
		carttoggle: function(options) {
			/** Extra script for toggle header catr **/
			$('#header').on('mouseenter', '.header-cart', function() {
				"use strict";
				$('.header-cart_product').addClass('open');
			}).on('mouseleave', '.header-cart', function() {
				"use strict";
				$('.header-cart_product').removeClass('open');
			});
		},
		
		
		initOwlCarousel: function(options) {
			
			
			
			$(".carousel-post ,.enable-owl-carousel  .brands-list").each(function(i) {
				
				var $owl = $(this).closest('.enable-owl-carousel');
				var $owlCar = $(this);
				
				var navigationData = $owl.data('navigation');
				var paginationData = $owl.data('pagination');
				var singleItemData = $owl.data('single-item');
				var autoPlayData = $owl.data('auto-play');
				var transitionStyleData = $owl.data('transition-style');
				var mainSliderData = $owl.data('main-text-animation');
				var afterInitDelay = $owl.data('after-init-delay');
				var stopOnHoverData = $owl.data('stop-on-hover');
				var marginData = $owl.data('margin');
				var min600 = $owl.data('min600');
				var min800 = $owl.data('min800');
				var min1200 = $owl.data('min1200');
				
				
				
				$owlCar.owlCarousel({
					navigation : navigationData,
					pagination: paginationData,
					singleItem : singleItemData,
					autoPlay : autoPlayData,
					margin:marginData,
					loop: true,
					transitionStyle : transitionStyleData,
					stopOnHover: stopOnHoverData,
					navigationText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
					itemsCustom:[
						[0, 1],
						[600, min600],
						[800, min800],
						[1200, min1200]
					],
				
					
				});
			});
			function sliderContentAnimate(elem){
				var $elem = elem;
				var afterMoveDelay = $elem.data('after-move-delay');
				var mainSliderData = $elem.data('main-text-animation');
				if(mainSliderData){
					setTimeout(function(){
						$('.main-slider_zoomIn').css('visibility','visible').addClass('zoomIn');
						$('.main-slider_slideInUp').css('visibility','visible').addClass('slideInUp');
						$('.main-slider_fadeInLeft').css('visibility','visible').addClass('fadeInLeft');
						$('.main-slider_fadeInRight').css('visibility','visible').addClass('fadeInRight');
						$('.main-slider_fadeInLeftBig').css('visibility','visible').addClass('fadeInLeftBig');
						$('.main-slider_fadeInRightBig').css('visibility','visible').addClass('fadeInRightBig');
					}, afterMoveDelay);
				}
			}
		},
		isotopeFilter: function(options) {
			var $container = jQuery('.isotope-filter');

			$container.imagesLoaded(function() {
				$container.isotope({
					// options
					filter: '*',
					itemSelector: '.isotope-item'
				});
			});

			// filter items when filter link is clicked
			jQuery('#filter').on('click', 'a', function() {
				jQuery('#filter  a').removeClass('current');
				jQuery(this).addClass('current');
				//var $container = jQuery('.isotope-filter');
				var selector = jQuery(this).attr('data-filter');
				jQuery('.isotope-filter').isotope({
					filter: selector
				});
				return false;
			});
			
			
		},
		
		initBxSlider: function(options){
			$(".bxslider").each(function(i){
				var sliderMode = $(this).data("mode");
				var slideMargin = $(this).data("slide-margin");
				var minSlides = $(this).data("min-slides");
				var moveSlides = $(this).data("move-slides");
				var sliderPager = $(this).data("pager");
				var sliderPagerCustom = $(this).data("pager-custom");
				var sliderControls = $(this).data("controls");
				var autoSlides = $(this).data("auto-slides");
				
				$(this).bxSlider({
					mode: sliderMode,
					slideMargin: slideMargin,
					minSlides: minSlides,
					moveSlides: moveSlides,
					auto:autoSlides,
					pager: sliderPager,
					pagerCustom: sliderPagerCustom,
					controls: sliderControls,
					prevText:'<i class="fa fa-angle-left"></i>',
					nextText:'<i class="fa fa-angle-right"></i>'
				});
			});
		},
 
		goToTop: function(options){
			$("#footer").on('click', '.goToTop', function(e){
				e.preventDefault();
				$('html,body').animate({
					scrollTop: 0,
				},'slow');
			});
			// Show/Hide Button on Window Scroll event.
			$(window).on('scroll', function(){
				var fromTop = $(this).scrollTop();
				var display = 'none';
				if(fromTop > 650){
					display = 'block';
				}
				$('#scrollTop').css({'display': display});
			});
		},
		fixedHeader: function(options){
			
			
			var headerSticky = $("body").data("header");
			
			
			if (headerSticky.length) {
			
			
			// Fixed Header
			var topOffset = $(window).scrollTop();
			if(topOffset > 0){
				$('body').addClass(headerSticky);
			}
			$(window).on('scroll', function(){
				var fromTop = $(this).scrollTop();
				if(fromTop > 0){
					$('body').addClass(headerSticky);
				}
				else{
					$('body').removeClass(headerSticky);
				}
				
			});
			
			}
			
			
		},
		
		
		
		

		productCounter: function(options){
			$(".product-counter").on('click', '.productCounter', function(e){
				e.preventDefault();
				var counterStep = parseInt($(this).data("counter-step"), 10);
				var counterType = $(this).data("counter-type");
				var counterField = $(this).data("counter-field");
				var counterAmount = parseInt($(counterField).val(), 10);
				if(!isNaN(counterAmount)){
					if(counterType == 'add'){
						counterAmount = counterAmount + counterStep;
					}
					else if(counterType == 'minus'){
						counterAmount = counterAmount - counterStep;
					}
					if(counterAmount < 0){
						counterAmount = 0;
					}
					$(counterField).val(counterAmount);
				}
			});
		},
        

    
   
    
    
		
		
		mainMenuSwitch: function(options){
			$('#header').on('click', '.mobileMenuSwitcher', function(e){
				$('body').toggleClass('openMenu');
			});
		},
		

		
	};
    
    
    
    
    $( '.b-header-menu li:has(ul)' ).doubleTapToGo();
    
    
    
      
       $(".btn_header_search").click(function() {
                $(".header-search").addClass("open");
            });


            $(document).on("click", ".search-form_close", function(event) {

                $(".header-search").removeClass("open");
            });



            $(document).on("click", ".btn_header_subscribe", function(event) {


                $(".header-subscribe").addClass("open");
            });
            $(document).on("click", ".search-form_close", function(event) {

                $(".header-subscribe").removeClass("open");
            });




 

})(jQuery); 



if (jQuery('.reveral-scroll').length > 0) {
    
    
    var windowWidth = jQuery(window).width();
    
    
    if (windowWidth > 900){
    
    
    window.sr = ScrollReveal({
	mobile:true,
	reset:true
    }
	);
	
	sr.reveal('.reveral-scroll > div  ');
    
}

	

  }

