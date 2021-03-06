<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>菜品详情</title>
		<meta name="keywords" content="KEYWORDS..." />
		<meta name="description" content="DESCRIPTION..." />
		<meta name="author" content="DeathGhost" />
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name='apple-touch-fullscreen' content='yes'>
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="format-detection" content="telephone=no">
		<meta name="format-detection" content="address=no">
		<meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
		<!--导航栏渐变开始-->
		<link rel="stylesheet" href="/wechat_css/reset.css">
		<link rel="stylesheet" href="/wechat_css/index.css">
		<!--导航栏渐变结束-->
		<link rel="stylesheet" type="text/css" href="/wechat_css/style.css" />
		<link rel="stylesheet" type="text/css" href="/wechat_css/swiper3.07.min.css" />
		<script src="/wechat_js/jquery.js"></script>
		<script src="/wechat_js/swiper.min.js"></script>
		<style>
			#slide {width: 100%; height:auto;overflow: hidden;position: relative;margin: 0;    height: 3rem;}
			#slide .swiper-slide {text-align: center;height: auto;}
			#tab_proList-com-det .goodsInfor .addToCart-com, #tab_proList-com-det .text_box, #tab_proList-com-det .decrease {
    top: 33%;
}
			#tab_proList-com-det li h2 a{color: #000;}
			#tab_proList-com-det li .price-com {
			    background-color: #ec7602;
			    padding: 0.06rem 0.2rem;
			    color: #fff;
			    border-radius: 1rem;
			    margin-left: -0.2rem;
			}
			.order-det-time, h4, p {
			    font-size: 0.3rem;
			    margin-bottom: 0.3rem;
			}

		</style>
		
		<script>
			$(document).ready(function() {
				var mySwiper = new Swiper('#slide', {
					autoplay: 5000,
					visibilityFullFit: true,
					loop: true,
					pagination: '.pagination',
				});
				//product list:Tab
				$(".tab_proList dd").eq(0).show().siblings(".tab_proList dd").hide();
				$(".tab_proList dt a").eq(0).addClass("currStyle");
				$(".tab_proList dt a").click(function() {
					var liindex = $(".tab_proList dt a").index(this);
					$(this).addClass("currStyle").siblings().removeClass("currStyle");
					$(".tab_proList dd").eq(liindex).fadeIn(150).siblings(".tab_proList dd").hide();
				});
				//飞入动画，具体根据实际情况调整
				
			});
		</script>
		
	</head>

	<body style="background-color: #f1f1f1;">
		<!--banner商品图-->
		<div id="slide" class="public-banner">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#">
						<img src="/upload/banner1.jpg" />
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<img src="/upload/banner2.jpg" />
					</a>
				</div>
			</div>	
		</div>
		<!--商品详情-->
		<div class="Conmmodity">
			<span>
				<h1>
					<!--糖醋里脊-->
					${dishes.dishesName}

				</h1>
				<p class="color999">
					<!--月销288-->
					月销 ${dishes.count}
				</p>
			</span>
			<span class="colorf00 f035">
				<!--￥20-->
				￥${dishes.price}
			</span>
		</div>
		<!--商品tab切换-->
        <div style=" height:20px;line-height:20px;
                      overflow:hidden;border:1px ;text-align:center">菜品介绍</div>

		</div>
		<div class="conmmodity-container" >
			<div class="swiper-wrapper w">
				<div class="swiper-slide d">
					<div class="init-loading list-group-item text-center" style="display: none;">下拉可以刷新</div>
					<div class="swiper-container2">
						<div class="swiper-wrapper">
							<div class="swiper-slide list-group">
								<p>
									<!-- 菜品介绍 -->
									<!--糖醋里脊是经典传统名菜之一，以猪肉里脊肉为主才，配以面粉，淀粉，醋等，酸甜可口，让人食欲大开。在浙菜，卤菜，川菜里均有此菜，菜品介绍-->
									${dishes.dishesIntroduce}
								</p>

							</div>
						
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-scrollbar"></div>
		</div>
		
		<!--评价-->
		<dl class="evaluateList">
			<dt class="evaluateList-title">
				<p class="f035">评价</p>
				<p class="f03">星级<em class="colorf00"> ${dishes.rating}</em></p>
			</dt>

		    <#list dishes.commentVos as comment>
                <dd >
                    <div class="evaluate">
                        <div class="evaluate-fl">
						<span>
							<p>${comment.commenterName}</p>
							<p class="color999"> ${comment.commentTimeStr}</p>
						</span>
                        </div>
                        <div class="evaluate-fr">

                        </div>
                    </div>
                    <div class="evaluate-text">
                        <p> ${comment.commentContent}</p>
                    </div>
                </dd>
		    </#list>

		
		
		<!--商品详情页的banner图片位置-->			
		<script type="text/javascript">
			$("#slide").find("img").each(function(){
				var w=screen.width;
				console.log(w) ;
				$(this).css("width",w+"px") ;
				console.log($(this).width()) ;
				$(this).css("height",w+"px") ;
				
			})
		</script>	
		<script>
			document.oncontextmenu = new Function("event.returnValue=false;");
			document.onselectstart = new Function("event.returnValue=false;");
		</script>
		<script type="text/javascript">
			var loadFlag = true;
			var oi = 0;
			var mySwiper = new Swiper('.conmmodity-container', {
				direction: 'vertical',
				scrollbar: '.swiper-scrollbar',
				slidesPerView: 'auto',
				mousewheelControl: true,
				freeMode: true,
				onTouchMove: function(swiper) { //手动滑动中触发
					var _viewHeight = document.getElementsByClassName('swiper-wrapper')[0].offsetHeight;
					var _contentHeight = document.getElementsByClassName('swiper-slide')[0].offsetHeight;
				},
				
			});
			var mySwiper2 = new Swiper('.swiper-container2', {
				onTransitionEnd: function(swiper) {

					$('.w').css('transform', 'translate3d(0px, 0px, 0px)')
					$('.swiper-container2 .swiper-slide-active').css('height', 'auto').siblings('.swiper-slide').css('height', '0px');
					mySwiper.update();

					$('.conmmodityTab a').eq(mySwiper2.activeIndex).addClass('active').siblings('a').removeClass('active');
				}
			});
			$('.conmmodityTab a').click(function() {
				$(this).addClass('active').siblings('a').removeClass('active');
				mySwiper2.slideTo($(this).index(), 500, false)

				$('.w').css('transform', 'translate3d(0px, 0px, 0px)')
				$('.swiper-container2 .swiper-slide-active').css('height', 'auto').siblings('.swiper-slide').css('height', '0px');
				mySwiper.update();
			});
		</script>
		
	</body>

</html>