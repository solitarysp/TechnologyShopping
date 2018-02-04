<%--
  Created by IntelliJ IDEA.
  User: Trong Tran
  Date: 2/3/2018
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>

</head>
<body>
<jsp:include page="/jsp/Layout/layoutAdminTop.jsp"/>

<style>
    .infobox-small > .infobox-chart {
        height: 20px;
    }
</style>
<script type="text/javascript">
    jQuery(function ($) {
        $('.easy-pie-chart.percentage').each(function () {
            var $box = $(this).closest('.infobox');
            var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
            var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
            var size = parseInt($(this).data('size')) || 50;
            $(this).easyPieChart({
                barColor: barColor,
                trackColor: trackColor,
                scaleColor: false,
                lineCap: 'butt',
                lineWidth: parseInt(size / 10),
                animate: ace.vars['old_ie'] ? false : 1000,
                size: size
            });
        })

        $('.sparkline').each(function () {
            var $box = $(this).closest('.infobox');
            var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
            $(this).sparkline('html',
                {
                    tagValuesAttribute: 'data-values',
                    type: 'bar',
                    barColor: barColor,
                    chartRangeMin: $(this).data('min') || 0
                });
        });


        //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
        //but sometimes it brings up errors with normal resize event handlers
        $.resize.throttleWindow = false;

        var placeholder = $('#piechart-placeholder').css({'width': '90%', 'min-height': '150px'});
        var colors = ["#68BC31", "#2091CF", "#AF4E96", "#DA5430", "#FEE074"];
        var data = [
            <c:forEach items="${totalProductType}" varStatus="i" var="tpt">
            {label: '${tpt.key}', data: ${tpt.value/totalAll*100}, color: colors[i]},

            </c:forEach>

        ]

        function drawPieChart(placeholder, data, position) {
            $.plot(placeholder, data, {
                series: {
                    pie: {
                        show: true,
                        tilt: 0.8,
                        highlight: {
                            opacity: 0.25
                        },
                        stroke: {
                            color: '#fff',
                            width: 2
                        },
                        startAngle: 2
                    }
                },
                legend: {
                    show: true,
                    position: position || "ne",
                    labelBoxBorderColor: null,
                    margin: [-30, 15]
                }
                ,
                grid: {
                    hoverable: true,
                    clickable: true
                }
            })
        }

        drawPieChart(placeholder, data);

        /**
         we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
         so that's not needed actually.
         */
        placeholder.data('chart', data);
        placeholder.data('draw', drawPieChart);


        //pie chart tooltip example
        var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
        var previousPoint = null;

        placeholder.on('plothover', function (event, pos, item) {
            if (item) {
                if (previousPoint != item.seriesIndex) {
                    previousPoint = item.seriesIndex;
                    var tip = item.series['label'] + " : " + item.series['percent'] + '%';
                    $tooltip.show().children(0).text(tip);
                }
                $tooltip.css({top: pos.pageY + 10, left: pos.pageX + 10});
            } else {
                $tooltip.hide();
                previousPoint = null;
            }

        });

        /////////////////////////////////////
        $(document).one('ajaxloadstart.page', function (e) {
            $tooltip.remove();
        });


        var d1 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d1.push([i, Math.sin(i)]);
        }

        var d2 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.5) {
            d2.push([i, Math.cos(i)]);
        }

        var d3 = [];
        for (var i = 0; i < Math.PI * 2; i += 0.2) {
            d3.push([i, Math.tan(i)]);
        }


        var sales_charts = $('#sales-charts').css({'width': '100%', 'height': '220px'});
        $.plot("#sales-charts", [
            {label: "Domains", data: d1},
            {label: "Hosting", data: d2},
            {label: "Services", data: d3}
        ], {
            hoverable: true,
            shadowSize: 0,
            series: {
                lines: {show: true},
                points: {show: true}
            },
            xaxis: {
                tickLength: 0
            },
            yaxis: {
                ticks: 10,
                min: -2,
                max: 2,
                tickDecimals: 3
            },
            grid: {
                backgroundColor: {colors: ["#fff", "#fff"]},
                borderWidth: 1,
                borderColor: '#555'
            }
        });


        $('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('.tab-content')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }


        $('.dialogs,.comments').ace_scroll({
            size: 300
        });


        //Android's default browser somehow is confused when tapping on label which will lead to dragging the task
        //so disable dragging when clicking on label
        var agent = navigator.userAgent.toLowerCase();
        if (ace.vars['touch'] && ace.vars['android']) {
            $('#tasks').on('touchstart', function (e) {
                var li = $(e.target).closest('#tasks li');
                if (li.length == 0) return;
                var label = li.find('label.inline').get(0);
                if (label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation();
            });
        }

        $('#tasks').sortable({
                opacity: 0.8,
                revert: true,
                forceHelperSize: true,
                placeholder: 'draggable-placeholder',
                forcePlaceholderSize: true,
                tolerance: 'pointer',
                stop: function (event, ui) {
                    //just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
                    $(ui.item).css('z-index', 'auto');
                }
            }
        );
        $('#tasks').disableSelection();
        $('#tasks input:checkbox').removeAttr('checked').on('click', function () {
            if (this.checked) $(this).closest('li').addClass('selected');
            else $(this).closest('li').removeClass('selected');
        });


        //show the dropdowns on top or bottom depending on window height and menu position
        $('#task-tab .dropdown-hover').on('mouseenter', function (e) {
            var offset = $(this).offset();

            var $w = $(window)
            if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
                $(this).addClass('dropup');
            else $(this).removeClass('dropup');
        });

    })
</script>
<div class="breadcrumbs ace-save-state" id="breadcrumbs">
    <ul class="breadcrumb">
        <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">Home</a>
        </li>
        <li class="active">Dashboard</li>
    </ul><!-- /.breadcrumb -->

    <div class="nav-search" id="nav-search">
        <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
        </form>
    </div><!-- /.nav-search -->
</div>

<div class="page-header">
    <h1>
        Dashboard
        <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            overview &amp; stats
        </small>
    </h1>
</div>

<!-- PAGE CONTENT BEGINS -->
<div class="alert alert-block alert-success">
    <button type="button" class="close" data-dismiss="alert">
        <i class="ace-icon fa fa-times"></i>
    </button>

    <i class="ace-icon fa fa-check green"></i>

    Welcome to
    <strong class="green">
        Ace
        <small>(v1.4)</small>
    </strong>,
    лёгкий, многофункциональный и простой в использовании шаблон для админки на bootstrap 3.3.6. Загрузить
    исходники с <a href="https://github.com/bopoda/ace">github</a> (with minified ace js/css files).
</div>

<div class="row">
    <div class="space-6"></div>

    <div class="col-sm-6 infobox-container">
        <div class="infobox infobox-green">
            <div class="infobox-icon">
                <i class="ace-icon fa fa-comments"></i>
            </div>

            <div class="infobox-data">
                <span class="infobox-data-number">32</span>
                <div class="infobox-content">comments + 2 reviews</div>
            </div>

            <div class="stat stat-success">-8%</div>
        </div>

        <div class="infobox infobox-blue">
            <div class="infobox-icon">
                <i class="ace-icon fa fa-twitter"></i>
            </div>

            <div class="infobox-data">
                <span class="infobox-data-number">11</span>
                <div class="infobox-content">new followers</div>
            </div>

            <div class="badge badge-success">
                +32%
                <i class="ace-icon fa fa-arrow-up"></i>
            </div>
        </div>

        <div class="infobox infobox-pink">
            <div class="infobox-icon">
                <i class="ace-icon fa fa-shopping-cart"></i>
            </div>

            <div class="infobox-data">
                <span class="infobox-data-number">${order.get("ordernow")}</span>
                <div class="infobox-content">new orders</div>
            </div>
            <c:set var="percent" value="${(order.get('ordernow')-order.get('orderbefore'))/order.get('orderbefore')*100}"/>
            <c:choose>
                <c:when test="${percent>=0}">
                    <div class="stat stat-success">${percent}%</div>
                </c:when>
                <c:otherwise>
                    <div class="stat stat-important">${percent}%</div>
                </c:otherwise>
            </c:choose>
            <%--(ordernow - orderbefore) / orderbefore * 100;--%>

        </div>

        <div class="infobox infobox-red">
            <div class="infobox-icon">
                <i class="ace-icon fa fa-flask"></i>
            </div>

            <div class="infobox-data">
                <span class="infobox-data-number">7</span>
                <div class="infobox-content">experiments</div>
            </div>
        </div>

        <div class="infobox infobox-orange2">
            <div class="infobox-chart">
                <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
            </div>

            <div class="infobox-data">
                <span class="infobox-data-number">6,251</span>
                <div class="infobox-content">pageviews</div>
            </div>

            <div class="badge badge-success">
                7.2%
                <i class="ace-icon fa fa-arrow-up"></i>
            </div>
        </div>

        <div class="infobox infobox-blue2">
            <div class="infobox-progress">
                <div class="easy-pie-chart percentage" data-percent="10" data-size="46">
                    <span class="percent">42</span>%
                </div>
            </div>

            <div class="infobox-data">
                <span class="infobox-text">traffic used</span>

                <div class="infobox-content">
                    <span class="bigger-110">~</span>
                    58GB remaining
                </div>
            </div>
        </div>

        <div class="space-6"></div>

        <div class="infobox infobox-green infobox-small infobox-dark">
            <div class="infobox-progress">
                <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
                    <span class="percent">61</span>%
                </div>
            </div>

            <div class="infobox-data">
                <div class="infobox-content">Task</div>
                <div class="infobox-content">Completion</div>
            </div>
        </div>

        <div class="infobox infobox-blue infobox-small infobox-dark">
            <div class="infobox-chart">
                <span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
            </div>

            <div class="infobox-data">
                <div class="infobox-content">Earnings</div>
                <div class="infobox-content">$${totalRenueve}</div>
            </div>
        </div>

        <div class="infobox infobox-grey infobox-small infobox-dark">
            <div class="infobox-icon">
                <i class="ace-icon fa fa-download"></i>
            </div>

            <div class="infobox-data">
                <div class="infobox-content">Downloads</div>
                <div class="infobox-content">1,205</div>
            </div>
        </div>
    </div>

    <div class="vspace-12-sm"></div>

    <div class="col-sm-5">
        <div class="widget-box">
            <div class="widget-header widget-header-flat widget-header-small">
                <h5 class="widget-title">
                    <i class="ace-icon fa fa-signal"></i>
                    Traffic Sources
                </h5>

                <div class="widget-toolbar no-border">
                    <div class="inline dropdown-hover">
                        <button class="btn btn-minier btn-primary">
                            This Week
                            <i class="ace-icon fa fa-angle-down icon-on-right bigger-110"></i>
                        </button>

                        <ul class="dropdown-menu dropdown-menu-right dropdown-125 dropdown-lighter dropdown-close dropdown-caret">
                            <li class="active">
                                <a href="#" class="blue">
                                    <i class="ace-icon fa fa-caret-right bigger-110">&nbsp;</i>
                                    This Week
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                    Last Week
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                    This Month
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <i class="ace-icon fa fa-caret-right bigger-110 invisible">&nbsp;</i>
                                    Last Month
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <div id="piechart-placeholder"></div>

                    <div class="hr hr8 hr-double"></div>

                    <div class="clearfix">
                        <div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-users fa-2x blue"></i>
																&nbsp; customer
															</span>
                            <h4 class="bigger pull-right">${countCustomer}</h4>
                        </div>

                        <div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-twitter-square fa-2x purple"></i>
																&nbsp; tweets
															</span>
                            <h4 class="bigger pull-right">941</h4>
                        </div>

                        <div class="grid3">
															<span class="grey">
																<i class="ace-icon fa fa-pinterest-square fa-2x red"></i>
																&nbsp; pins
															</span>
                            <h4 class="bigger pull-right">1,050</h4>
                        </div>
                    </div>
                </div><!-- /.widget-main -->
            </div><!-- /.widget-body -->
        </div><!-- /.widget-box -->
    </div><!-- /.col -->
    <div class="col-sm-12">
        <div class="widget-box transparent">
            <div class="widget-header widget-header-flat">
                <h4 class="widget-title lighter">
                    <i class="ace-icon fa fa-star orange"></i>
                    Popular Products Were Bought
                </h4>

                <div class="widget-toolbar">
                    <a href="#" data-action="collapse">
                        <i class="ace-icon fa fa-chevron-up"></i>
                    </a>
                </div>
            </div>

            <div class="widget-body">
                <div class="widget-main no-padding">
                    <table class="table table-bordered table-striped">
                        <thead class="thin-border-bottom">
                        <tr>
                            <th>
                                <i class="ace-icon fa fa-caret-right blue"></i>name
                            </th>

                            <th>
                                <i class="ace-icon fa fa-caret-right blue"></i>price
                            </th>

                            <th>
                                <i class="ace-icon fa fa-caret-right blue"></i>total sold
                            </th>

                            <th>
                                <i class="ace-icon fa fa-caret-right blue"></i>repository
                            </th>

                            <th class="hidden-480">
                                <i class="ace-icon fa fa-caret-right blue"></i>status
                            </th>


                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${refProductOrders}" var="r" varStatus="i">
                            <tr>
                                <td>${r.product.name}</td>

                                <td>
                                    <c:forEach items="${r.product.category}" var="c">
                                        <c:choose>
                                            <c:when test="${not empty c.value}">
                                                <small>
                                                    <s class="red">$${r.product.price}</s>
                                                </small>
                                                <b class="green">$${r.product.price-r.product.price*c.value/100}</b>
                                            </c:when>
                                            <c:otherwise>
                                                <b class="blue">$${r.product.price}</b>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </td>

                                <td>
                                        ${r.quantity}
                                </td>

                                <td>
                                        ${r.product.repository}
                                </td>

                                <c:choose>
                                    <c:when test="${r.product.repository>0}">
                                        <td class="hidden-480">
                                            <span class="label label-info arrowed-right arrowed-in">on selling</span>
                                        </td>
                                    </c:when>
                                    <c:otherwise>
                                        <td class="hidden-480">
                                            <span class="label label-danger arrowed">out of stock</span>
                                        </td>
                                    </c:otherwise>
                                </c:choose>

                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div><!-- /.widget-main -->
            </div><!-- /.widget-body -->
        </div><!-- /.widget-box -->
    </div><!-- /.col -->
</div><!-- /.row -->

<div class="hr hr32 hr-dotted"></div>

<jsp:include page="/jsp/Layout/layoutAdminBot.jsp"/>
</body>
</html>
