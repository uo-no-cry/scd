<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">

<title>少吃点</title>

<!--=== Favicon ===-->
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon" />

<!--== Google Fonts ==-->
<!-- <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,500,600,700" rel="stylesheet"> -->

<!--=== Bootstrap CSS ===-->
<link href="assets/css/vendor/bootstrap.min.css" rel="stylesheet">
<!--=== Font-Awesome CSS ===-->
<link href="assets/css/vendor/font-awesome.css" rel="stylesheet">
<!--=== Plugins CSS ===-->
<link href="assets/css/plugins.css" rel="stylesheet">
<!--=== Helper CSS ===-->
<link href="assets/css/helper.min.css" rel="stylesheet">
<!--=== Main Style CSS ===-->
<link href="assets/css/style.css" rel="stylesheet">

<!-- Modernizer JS -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

<!--[if lt IE 9]>
    <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<!--== Start Header Section ==-->
	<header id="header-area" class="header__4">
		<!-- Start PreHeader Area -->
		<div class="preheader-area">
			<div class="container">
				<div class="row">
					<div class="col-md-5 col-lg-6">
						<div
							class="preheader-contact-info d-flex align-items-center justify-content-between justify-content-md-start">
							<div class="single-contact-info">
								<span class="contact-icon"> <i class="fa fa-envelope"></i>
								</span> <a href="mailto:your@example.com" class="contact-text"> <strong>邮箱:</strong>
									your@email.here
								</a>
							</div>
							<div class="single-contact-info">
								<span class="contact-icon"> <i class="fa fa-phone"></i>
								</span> <a href="" class="contact-text"> <strong>电话:</strong> (+1)
									866-540-3229
								</a>
							</div>
						</div>
					</div>

					<div class="col-md-7 col-lg-6 mt-xs-10">
						<div class="site-setting-menu">
							<ul class="nav justify-content-center justify-content-md-end">
								<li><a href="my-account.html">我的账号</a></li>
								<li><a href="wishlist.html">我的收藏</a></li>
								<li><a href="login-register.html">登录</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End PreHeader Area -->

		<!-- Start Header Middle Area -->
		<div class="header-middle-area">
			<div class="container">
				<div class="row">
					<!-- Logo Area Start -->
					<div
						class="col-4 col-md-2 col-xl-3 m-auto text-center text-lg-left">
						<a href="index.html" class="logo-wrap d-block"> <img
							src="assets/img/logo-black.png" alt="Logo" class="img-fluid" />
						</a>
					</div>
					<!-- Logo Area End -->

					<!-- Search Box Area Start -->
					<div class="col-8 col-md-7 col- m-auto ">
						<div class="search-box-wrap">
							<form class="search-form d-flex" action="#" method="get">
								<input type="search" name="search" placeholder="~来搜搜你想要的~" />
								<button class="btn btn-search">
									<img src="assets/img/icons/icon-search.png" alt="Search Icon" />
								</button>
							</form>
						</div>
					</div>
					<!-- Search Box Area End -->

					<!-- Mini Cart Area Start -->
                    <div
                        class="col-12 col-md-3 col-xl-2 m-auto text-center text-lg-right mt-xs-15">
                        <div class="minicart-wrapper">
                            <button id='myCartBtn' class="btn btn-minicart">购物车</button>
                        </div>
                    </div>
                    <!-- Mini Cart Area End -->
				</div>
			</div>
		</div>
		<!-- End Header Middle Area -->

		<!-- Start Main Menu Area -->
		<div class="navigation-area" id="fixheader">
			<div class="container">
				<div class="row">
					<!-- Categories List Start -->
					<div class="col-10 col-lg-3">
						<div class="categories-list-wrap">
							<button class="btn btn-category d-none d-lg-inline-block">
								<i class="fa fa-bars"></i> 分类
							</button>
							<ul class="category-list-menu">
								<li class="category-item-parent dropdown-show"><a href="#"
									class="category-item arrow-toggle"> <img
										src="assets/img/icons/desktop.png" alt="Computer" /> <span>进口食品</span>
								</a>
									<ul class="mega-menu-wrap dropdown-nav">
										<li class="mega-menu-item"><a href="#"
											class="mega-item-title">进口牛奶</a>
											<ul>
												<li><a href="#">全脂牛奶</a></li>
												<li><a href="#">低脂牛奶</a></li>
												<li><a href="#">酸奶</a></li>
												<li><a href="#">脱脂牛奶</a></li>
											</ul></li>
										<li class="mega-menu-item"><a href="#"
											class="mega-item-title">进口牛奶</a>
											<ul>
												<li><a href="#">全脂牛奶</a></li>
												<li><a href="#">低脂牛奶</a></li>
												<li><a href="#">酸奶</a></li>
												<li><a href="#">脱脂牛奶</a></li>
											</ul></li>
										<li class="mega-menu-item"><a href="#"
											class="mega-item-title">进口牛奶</a>
											<ul>
												<li><a href="#">全脂牛奶</a></li>
												<li><a href="#">低脂牛奶</a></li>
												<li><a href="#">酸奶</a></li>
												<li><a href="#">脱脂牛奶</a></li>
											</ul></li>
									</ul></li>

								<li class="category-item-parent dropdown-show"><a href="#"
									class="category-item arrow-toggle"> <img
										src="assets/img/icons/mobile.png" alt="Mobile" /> <span>休闲零食</span>
								</a>
									<ul class="mega-menu-wrap dropdown-nav">
										<li class="mega-menu-item"><a href="#"
											class="mega-item-title"></a>
											<ul>
												<li><a href="#">夏威夷果</a></li>
												<li><a href="#">碧根果</a></li>
												<li><a href="#">松子</a></li>
												<li><a href="#">核桃</a></li>
											</ul></li>

										<li class="mega-menu-item"><a href="#"
											class="mega-item-title"></a>
											<ul>
												<li><a href="#">贝类即食</a></li>
												<li><a href="#">开心果</a></li>
												<li><a href="#">瓜子</a></li>
												<li><a href="#">栗子</a></li>
											</ul></li>

										<li class="mega-menu-item"><a href="#"
											class="mega-item-title"></a>
											<ul>
												<li><a href="#">红枣</a></li>
												<li><a href="#">花生</a></li>
												<li><a href="#">葡萄干</a></li>
												<li><a href="#">芒果干</a></li>
											</ul></li>

										<li class="mega-menu-item"><a href="#"
											class="mega-item-title"></a>
											<ul>
												<li><a href="#">腰果</a></li>
												<li><a href="#">梅干</a></li>
												<li><a href="#">榴莲干</a></li>
												<li><a href="#">山楂</a></li>
											</ul></li>
									</ul></li>
								<li class="category-item-parent"><a href="#"
									class="category-item"> <img
										src="assets/img/icons/camera.png" alt="Camera" /> <span>坚果</span>
								</a></li>
								<li class="category-item-parent"><a href="#"
									class="category-item"> <img src="assets/img/icons/fan.png"
										alt="Camera" /> <span>茶饮冲调</span>
								</a></li>
								<li class="category-item-parent"><a href="#"
									class="category-item"> <img
										src="assets/img/icons/games.png" alt="Camera" /> <span>美酒</span>
								</a></li>
								<li class="category-item-parent"><a href="#"
									class="category-item"> <img src="assets/img/icons/tv.png"
										alt="Camera" /> <span>粮油干货</span>
								</a></li>

								<li class="category-item-parent hidden"><a href="#"
									class="category-item"> <img
										src="assets/img/icons/camera.png" alt="Camera" /> <span>华农酸奶</span>
								</a></li>
								<li class="category-item-parent"><a href="#"
									class="category-item btn-more">更多</a></li>
							</ul>
						</div>
					</div>
					<!-- Categories List End -->

					<!-- Main Menu Start -->
					<div class="col-2 col-lg-9 d-none d-lg-block">
						<div class="main-menu-wrap">
							<nav class="mainmenu">
								<ul class="main-navbar clearfix">
									<li class="dropdown-show"><a href="index4.html" class="">首页</a>
									</li>
									<li><a href="about.html">关于我们</a></li>
									<li class="dropdown-show"><a href="shop.action">商店</a></li>
									<li class="dropdown-show"><a href="#" class="arrow-toggle">Pages</a>
										<ul class="dropdown-nav">
											<li><a href="cart.html">Shopping Cart</a></li>
											<li><a href="checkout.html">Checkout</a></li>
											<li><a href="compare.html">Compare</a></li>
											<li><a href="wishlist.html">Wishlist</a></li>
											<li><a href="login-register.html">Login & Register</a></li>
											<li><a href="my-account.html">My Account</a></li>
											<li><a href="404.html">404 Error</a></li>
										</ul></li>
									<li><a href="contact.html">联系我们</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<!-- Main Menu End -->
				</div>
			</div>
		</div>
		<!-- End Main Menu Area -->
		<!-- End Main Menu Area -->
	</header>
	<!--== End Header Section ==-->

	<!--== Start Slider & Offer Area ==-->
	<div class="slider-offer-wrapper">
		<div class="container">
			<div class="slider-offer-content">
				<div class="row">
					<!-- Slider content Start -->
					<div class="col-lg-9">
						<div class="slider-carousel owl-carousel">
							<c:forEach items="${contentList }" var="content">
								<c:if test="${content.cmsCatId == '000' }">
									<c:set value="${fn:split(content.cmsPic, ',') }" var="pictures"></c:set>
									<c:forEach items="${pictures }" var="pic">
										<div class="single-slide-item">
											<a href="${content.cmsUrl }"><img src="${pic }"
												alt="Slide"></a>
										</div>
									</c:forEach>
								</c:if>
							</c:forEach>

							<!-- 死数据 -->
							<!-- <div class="single-slide-item">
								<a href="#"><img src="assets/img/home2-slider-img-2.jpg"
									alt="Slide"></a>
							</div>
							<div class="single-slide-item">
								<a href="#"><img src="assets/img/home2-slider-img-1.jpg"
									alt="Slide"></a>
							</div>
							<div class="single-slide-item">
								<a href="#"><img src="assets/img/home2-slider-img-3.jpeg"
									alt="Slide"></a>
							</div> -->
						</div>
					</div>
					<!-- Slider content End -->

					<!-- Spacial Offer Start  -->
					<div class="col-lg-3">
						<div class="spacial-offer-wrap">
							<h3 class="title">最特价</h3>
							<div class="spacial-product-wrap">
								<div class="spacial-product-carousel owl-carousel">
									<!-- Single Spacial Offer Start -->
									<div class="single-product-item">
										<div class="product-details">
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-half"></i>
											</div>
											<h2 class="product-title">
												<a href="singleProduct.action?itemId=">手工起酥 老少皆宜的酥糯</a>
											</h2>
											<div class="price-box d-flex">
												<span class="product-price">￥16.99</span>
												<del class="product-price sale">￥40.99</del>
											</div>
										</div>
										<figure class="product-thumb">
											<a href="singleProduct.action?itemId="><img
												src="assets/img/special-offer.jpg" alt="special-offer"></a>
										</figure>

										<div class="sale-countdown-wrap">
											<div class="sale-countdown" data-date="10/20/2019"></div>
										</div>
									</div>
									<!-- Single Spacial Offer End -->

									<!-- Single Spacial Offer Start -->
									<div class="single-product-item">
										<div class="product-details">
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-half"></i>
											</div>
											<h2 class="product-title">
												<a href="singleProduct.action?itemId=">手工起酥 老少皆宜的酥糯</a>
											</h2>
											<div class="price-box d-flex">
												<span class="product-price">￥16.99</span>
												<del class="product-price sale">￥40.99</del>
											</div>
										</div>
										<figure class="product-thumb">
											<a href="singleProduct.action?itemId="><img
												src="assets/img/special-offer.jpg" alt="special-offer"></a>
										</figure>

										<div class="sale-countdown-wrap">
											<div class="sale-countdown" data-date="10/20/2019"></div>
										</div>
									</div>
									<!-- Single Spacial Offer End -->

									<!-- Single Spacial Offer Start -->
									<div class="single-product-item">
										<div class="product-details">
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-half"></i>
											</div>
											<h2 class="product-title">
												<a href="singleProduct.action?itemId=">手工起酥 老少皆宜的酥糯</a>
											</h2>
											<div class="price-box d-flex">
												<span class="product-price">￥16.99</span>
												<del class="product-price sale">￥40.99</del>
											</div>
										</div>
										<figure class="product-thumb">
											<a href="singleProduct.action?itemId="><img
												src="assets/img/special-offer.jpg" alt="special-offer"></a>
										</figure>

										<div class="sale-countdown-wrap">
											<div class="sale-countdown" data-date="3/8/2019"></div>
										</div>
									</div>
									<!-- Single Spacial Offer End -->
								</div>
							</div>
						</div>
					</div>
					<!-- Spacial Offer End  -->
				</div>
			</div>
		</div>
	</div>
	<!--== End Slider & Offer Area ==-->

	<!--== Start Feature Products  Area ==-->
	<div id="product-area-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="product-content-wrap">
						<!-- Product Tab Menu Start -->
						<nav class="product-teb-menu">
							<ul class="nav justify-content-center" role="tablist">
								<li><a class="active" href="#new-products"
									id="new-product-tab" data-toggle="tab">新产品</a></li>
								<li><a href="#sale-products" id="sale-product-tab"
									data-toggle="tab">热售</a></li>
								<li><a href="#feature-products" id="feature-product-tab"
									data-toggle="tab">特色零食</a></li>
							</ul>
						</nav>
						<!-- Product Tab Menu End -->

						<!-- Product Tab Content Start -->
						<div class="tab-content" id="productContent">
							<div class="tab-pane fade show active" id="new-products"
								role="tabpanel">
								<div class="products-wrapper">
									<div class="product-carousel owl-carousel">
										<c:forEach items="${newProductList }" var="product">
											<!-- Single Product Start -->
											<div class="single-product-item">
												<figure class="product-thumb">
													<a href="singleProduct.action?itemId=${product.cmsItemId }"><img
														src="${product.cmsPic }" alt="new-product"></a>
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Quick View" data-toggle="modal"
														data-target="#quickView"><i class="fa fa-eye"></i></a>
												</figure>
												<div class="product-details">
													<h2 class="product-title">
														<a href="singleProduct.action?itemId=itemId=${product.cmsItemId }">${product.cmsName }</a>
													</h2>
													<div class="rating">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i>
													</div>
													<span class="product-price">${product.cmsPrice }</span>

													<div class="product-meta">
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
														<a href="wishlist.html" class="btn btn-round btn-cart"
															title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
															href="compare.html" class="btn btn-round btn-cart"
															title="Add to Compare"><i class="fa fa-exchange"></i></a>
													</div>
												</div>
											</div>
											<!-- Single Product End -->
										</c:forEach>
										
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="sale-products" role="tabpanel">
								<div class="products-wrapper">
									<div class="product-carousel owl-carousel">
										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/popular-01.jpg" alt="popular-01"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">香卤铁蛋</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">$10.99</span>
													<del class="product-price sale">$15.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/popular-02.jpg" alt="popular-02"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">迷你烤香肠</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥15.99</span>
													<del class="product-price sale">￥20.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/popular-03.jpg" alt="popular-03"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">牛板筋</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥11.99</span>
													<del class="product-price sale">￥15.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/popular-04.jpg" alt="popular-04"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">鱼丸</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<span class="product-price">￥8.99</span>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/popular-05.jpg" alt="popular-05"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">开口笑甘栗</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥8.99</span>
													<del class="product-price sale">￥9.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="feature-products" role="tabpanel">
								<div class="products-wrapper">
									<div class="product-carousel owl-carousel">
										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/feature-01.jpg" alt="feature-01"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">七彩蔬菜干</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥16.99</span>
													<del class="product-price sale">￥20.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/feature-02.jpg" alt="feature-02"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">车厘子干</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥19.99</span>
													<del class="product-price sale">￥25.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/feature-03.jpg" alt="feature-03"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">零度鲜黄桃</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥22.99</span>
													<del class="product-price sale">￥30.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/feature-04.jpg" alt="feature-04"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">23度鲜夹心枣</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<span class="product-price">￥28.99</span>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->

										<!-- Single Product Start -->
										<div class="single-product-item">
											<figure class="product-thumb">
												<a href="singleProduct.action?itemId="><img
													src="assets/img/feature-05.jpg" alt="feature-05"></a>
											</figure>
											<div class="product-details">
												<h2 class="product-title">
													<a href="singleProduct.action?itemId=">冻青梅</a>
												</h2>
												<div class="rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="price-box d-flex">
													<span class="product-price">￥14.99</span>
													<del class="product-price sale">￥19.99</del>
												</div>

												<div class="product-meta">
													<a href="#" class="quickviewbtn btn btn-round btn-cart"
														title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
													<a href="wishlist.html" class="btn btn-round btn-cart"
														title="Add to Wishlist"><i class="fa fa-heart"></i></a> <a
														href="compare.html" class="btn btn-round btn-cart"
														title="Add to Compare"><i class="fa fa-exchange"></i></a>
												</div>
											</div>
										</div>
										<!-- Single Product End -->
									</div>
								</div>
							</div>
						</div>
						<!-- Product Tab Content End -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== End Feature Products  Area ==-->

	<!-- Start Sale Banner Area -->
	<div class="banner-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<a href="shop.action"> <img src="assets/img/home4-banner.jpg"
						alt="Banner" />
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Sale Banner Area -->

	<!-- Start Products Area Wrapper -->
	<div class="product-area-wrapper">
		<div class="container">
			<!-- Phone &  Tablet Products Area -->
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<!-- Section title Start -->
						<div class="col-lg-12">
							<div class="section-title section-title-two">
								<h2>茶水 & 酒水 &肥仔水</h2>
							</div>
						</div>
						<!-- Section title End -->
					</div>

					<div class="row">
						<!-- Latest Product Content -->
						<div class="col-lg-12">
							<div class="product-content-wrap">
								<!-- Product Tab Menu Start -->
								<nav class="latest-pro-tab-menu style-two">
									<ul class="nav" role="tablist">
										<li><a class="active" href="#computer-products"
											id="computer-products-tab" data-toggle="tab">茶水</a></li>
										<li><a href="#smartphone-products"
											id="smartphone-products-tab" data-toggle="tab">酒水 </a></li>
										<li><a href="#camera-products" id="camera-products-tab"
											data-toggle="tab">肥仔水</a></li>
									</ul>
								</nav>
								<!-- Product Tab Menu End -->

								<!-- Product Tab Content Start -->
								<div class="tab-content" id="phonetabletProducts">
									<div class="tab-pane fade show active" id="computer-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/tea-01.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">碧螺春</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥100.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/tea-02.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">普洱小陀茶</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥59.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/tea-03.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">玫瑰花茶</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥120.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/tea-04.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">信阳毛尖</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥70.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/tea-05.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">张一元-茉莉花茶</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥200.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="smartphone-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/alcohol-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德国原装进口啤酒奥丁格自然浑浊型小</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥168.00</span>
															<del class="product-price sale">￥440.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/alcohol-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">法国Lafite拉菲进口传奇波尔</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥443.99</span>
															<del class="product-price sale">￥564.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/alcohol-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">RIO伏特加鸡尾酒 锐澳微醺3.8度缤纷6</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥79.00</span>
															<del class="product-price sale">¥99.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/alcohol-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">菊正宗上选清酒1.8L日本清酒原装进口洋酒生酛辛口本酿造纯米清酒</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥199.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/alcohol-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">尊尼获加黑牌黑方威士忌700ml进口洋</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥206.00</span>
															<del class="product-price sale">¥256.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="camera-products" role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/solf-drink-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">香飘飘奶茶 Meco蜜谷· 果汁茶 果汁 饮</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">$49.99</span>
															<del class="product-price sale">$59.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/solf-drink-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【第2件5折】法国依云天然矿泉水330ml</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥89.00</span>
															<del class="product-price sale">¥99.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/solf-drink-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">养元六个核桃易智优+240ml*20罐植物</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥65.00</span>
															<del class="product-price sale">¥85.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/solf-drink-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">东鹏特饮运动型功能性饮料250ml*16</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥29.90</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/solf-drink-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【农夫山泉官方旗舰店】饮用天然水</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥89.90</span>
															<del class="product-price sale">￥99.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>
								</div>
								<!-- Product Tab Content End -->
							</div>
						</div>
						<!-- Latest Product Content -->
					</div>
				</div>
			</div>
			<!-- Phone &  Tablet Products Area -->

			<!-- Banner Area Start -->
			<div class="home4-banner-area">
				<div class="row">
					<div class="col-md-12">
						<a href="shop.action"> <img
							src="assets/img/home4-cat-banner-small.jpg" alt="Banner" />
						</a>
					</div>
				</div>
			</div>
			<!-- Banner Area End -->

			<!-- Tv & Cinema Products Start -->
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<!-- Section title Start -->
						<div class="col-lg-12">
							<div class="section-title section-title-two">
								<h2>粮油干货</h2>
							</div>
						</div>
						<!-- Section title End -->
					</div>

					<div class="row">
						<!-- Latest Product Content -->
						<div class="col-lg-12">
							<div class="product-content-wrap">
								<!-- Product Tab Menu Start -->
								<nav class="latest-pro-tab-menu style-two">
									<ul class="nav" role="tablist">
										<li><a class="active" href="#samsung-products"
											id="samsung-products-tab" data-toggle="tab">方便面</a></li>
										<li><a href="#sony-products" id="sony-products-tab"
											data-toggle="tab">火腿</a></li>
										<li><a href="#panasonic-products"
											id="panasonic-products-tab" data-toggle="tab">大米</a></li>
									</ul>
								</nav>
								<!-- Product Tab Menu End -->

								<!-- Product Tab Content Start -->
								<div class="tab-content" id="tvCinemaProducts">
									<div class="tab-pane fade show active" id="samsung-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/instant-noodles-04.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">老北京方便面 南街村整箱袋装泡面36袋</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥34.90</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/instant-noodles-03.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">康师傅 大食袋红烧牛肉面 120g*5袋</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥12.90</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/instant-noodles-02.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">Samyang/三养韩国进口拉面火鸡面辣</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥49.80</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/instant-noodles-01.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">康师傅方便面经典桶装整箱12桶包邮</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥42.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/instant-noodles-05.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">Endeavor Daytrip
																Backpack</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">$40.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="sony-products" role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/ham-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">金字 金华火腿肉300g家庭装 正宗浙江</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥49.00</span>
															<del class="product-price sale">¥59.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/ham-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">金字 金华火腿礼盒装2.75kg整腿正宗浙</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥348.00</span>
															<del class="product-price sale">¥448.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/ham-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【金华火腿官方店】4斤装 正宗火腿肉</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥208.00</span>
															<del class="product-price sale">¥218.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/ham-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【金华火腿官方店】 上方500g正宗火</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥88.00</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/ham-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">喜得佳 低脂火腿片454g*2包 即食三明</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥59.80</span>
															<del class="product-price sale">¥69.80</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="panasonic-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/rice-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">福临门大米 苏软香10kg 中粮出品 苏北</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥55.80</span>
															<del class="product-price sale">¥65.80</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/rice-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">金龙鱼 盘锦大米 蟹稻共生10kg 东北大米</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥59.90</span>
															<del class="product-price sale">¥69.90</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/rice-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">十月稻田长粒香大米10kg东北大米</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥78.00</span>
															<del class="product-price sale">¥88.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/rice-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">柴火大院 五常有机稻花香大米5kg</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥168</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/rice-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">雪龙瑞斯 2018年新米上市 五常稻花香</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥55</span>
															<del class="product-price sale">￥66</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>
								</div>
								<!-- Product Tab Content End -->
							</div>
						</div>
						<!-- Latest Product Content -->
					</div>
				</div>
			</div>
			<!-- Tv & Cinema Products End -->

			<!-- Banner Area Start -->
			<div class="home4-banner-area">
				<div class="row">
					<div class="col-md-6 mt-xs-30">
						<a href="shop.action"> <img src="assets/img/banner-large.jpg"
							alt="Banner" />
						</a>
					</div>

					<div class="col-md-6">
						<a href="shop.action"> <img src="assets/img/banner-small.jpg"
							alt="Banner" />
						</a>
					</div>
				</div>
			</div>
			<!-- Banner Area End -->

			<!-- Photos & Camera Products Start -->
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<!-- Section title Start -->
						<div class="col-lg-12">
							<div class="section-title section-title-two">
								<h2>进口佳品</h2>
							</div>
						</div>
						<!-- Section title End -->
					</div>

					<div class="row">
						<!-- Latest Product Content -->
						<div class="col-lg-12">
							<div class="product-content-wrap">
								<!-- Product Tab Menu Start -->
								<nav class="latest-pro-tab-menu style-two">
									<ul class="nav" role="tablist">
										<li><a class="active" href="#cannon-products"
											id="cannon-products-tab" data-toggle="tab">进口牛奶</a></li>
										<li><a href="#nikon-products" id="nikon-products-tab"
											data-toggle="tab">进口饼干</a></li>
										<li><a href="#fujifilm-products"
											id="fujifilm-products-tab" data-toggle="tab">进口巧克力</a></li>
									</ul>
								</nav>
								<!-- Product Tab Menu End -->

								<!-- Product Tab Content Start -->
								<div class="tab-content" id="photosCameras">
									<div class="tab-pane fade show active" id="cannon-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-milk-01.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">澳大利亚原装进口德运全脂纯牛奶1L*1</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥99.00</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-milk-02.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德国进口牛奶 德亚全脂牛奶高钙早餐奶</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">$79.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-milk-03.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【直营】澳洲进口德运Devondale进口</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥89.00</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-milk-04.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德亚 全脂牛奶1L*12盒/整箱 德国原装</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">¥112.00</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-milk-05.jpg" alt="Product"></a>
														<a href="#" class="quickviewbtn btn btn-round btn-cart"
															title="Quick View" data-toggle="modal"
															data-target="#quickView"><i class="fa fa-eye"></i></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">新西兰进口纽仕兰3.5全脂高钙早餐纯牛</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">$79.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="nikon-products" role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-cookie-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">香港进口美心原味鸡蛋卷饼干448G</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥159.00</span>
															<del class="product-price sale">¥189.00</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-cookie-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">进口迪乐司巧克力酱夹心罐装曲奇饼干</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥26.80</span>
															<del class="product-price sale">¥36.80</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-cookie-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">马来西亚进口GPR黄油曲奇饼干150g/</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥16.80</span>
															<del class="product-price sale">¥26.80</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-cookie-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">英国进口go ahead酸奶水果夹心饼干休</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥40.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-cookie-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">皇冠曲奇饼干蓝罐丹麦风味进口大润谷908g</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥45.99</span>
															<del class="product-price sale">￥55.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>

									<div class="tab-pane fade" id="fujifilm-products"
										role="tabpanel">
										<div class="products-wrapper">
											<div class="product-carousel owl-carousel">
												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-chocolate-01.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">【天猫超市】瑞士进口亿滋Toblerone</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">¥15.90</span>
															<del class="product-price sale">¥25.90</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-chocolate-02.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德国进口瑞特斯波德运动牛奶夹心黑巧克</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥33.99</span>
															<del class="product-price sale">￥44.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-chocolate-03.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德国进口瑞特斯波德运动牛奶夹心黑巧克力瑞特斯波德旗舰店</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥77.99</span>
															<del class="product-price sale">￥155.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-chocolate-04.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">amovo魔吻黑巧克力礼盒装生日情人节送</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<span class="product-price">￥40.99</span>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->

												<!-- Single Product Start -->
												<div class="single-product-item">
													<figure class="product-thumb">
														<a href="singleProduct.action?itemId="><img
															src="assets/img/imported-chocolate-05.jpg" alt="Product"></a>
													</figure>
													<div class="product-details">
														<h2 class="product-title">
															<a href="singleProduct.action?itemId=">德菲丝法国进口松露形黑巧克力礼盒送女</a>
														</h2>
														<div class="rating">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i>
														</div>
														<div class="price-box d-flex">
															<span class="product-price">￥28.99</span>
															<del class="product-price sale">￥49.99</del>
														</div>

														<div class="product-meta">
															<a href="#" class="quickviewbtn btn btn-round btn-cart"
																title="Add to Cart"><i class="fa fa-shopping-cart"></i></a>
															<a href="wishlist.html" class="btn btn-round btn-cart"
																title="Add to Wishlist"><i class="fa fa-heart"></i></a>
															<a href="compare.html" class="btn btn-round btn-cart"
																title="Add to Compare"><i class="fa fa-exchange"></i></a>
														</div>
													</div>
												</div>
												<!-- Single Product End -->
											</div>
										</div>
									</div>
								</div>
								<!-- Product Tab Content End -->
							</div>
						</div>
						<!-- Latest Product Content -->
					</div>
				</div>
			</div>
			<!-- Photos & Camera Products End -->
		</div>
	</div>
	<!-- End Products Area Wrapper -->


	<!--== Start Brand Carousel Area ==-->
	<div class="brand-logo-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="brand-logo-carousel owl-carousel">
						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-1.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->

						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-2.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->

						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-3.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->

						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-4.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->

						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-5.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->

						<!-- Single Brand Logo Start -->
						<div class="single-brand-item">
							<a href="#"><img src="assets/img/logo-6.png" alt="brand"></a>
						</div>
						<!-- Single Brand Logo End -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== End Brand Carousel Area ==-->

	<!--== Start Call To Action ==-->
	<section id="call-to-action" class="callto-action-two">
		<div class="container">
			<div class="call-to-action-content">
				<div class="row">
					<!-- Single Call to Action Start -->
					<div class="col-lg-3 col-sm-6 m-auto">
						<div class="single-action-item d-flex align-items-center">
							<div class="call-action-icon">
								<i class="fa fa-truck"></i>
							</div>
							<div class="call-action-info">
								<h4>Free Shipping</h4>
								<p>on order over $100</p>
							</div>
						</div>
					</div>
					<!-- Single Call to Action End -->

					<!-- Single Call to Action Start -->
					<div class="col-lg-3 col-sm-6">
						<div class="single-action-item d-flex align-items-center">
							<div class="call-action-icon">
								<i class="fa fa-support"></i>
							</div>
							<div class="call-action-info">
								<h4>24/7 Support</h4>
								<p>Online consultations</p>
							</div>
						</div>
					</div>
					<!-- Single Call to Action End -->

					<!-- Single Call to Action Start -->
					<div class="col-lg-3 col-sm-6">
						<div class="single-action-item d-flex align-items-center">
							<div class="call-action-icon">
								<i class="fa fa-calendar"></i>
							</div>
							<div class="call-action-info">
								<h4>Daily updates</h4>
								<p>Check out store</p>
							</div>
						</div>
					</div>
					<!-- Single Call to Action End -->

					<!-- Single Call to Action Start -->
					<div class="col-lg-3 col-sm-6">
						<div class="single-action-item d-flex align-items-center">
							<div class="call-action-icon">
								<i class="fa fa-refresh"></i>
							</div>
							<div class="call-action-info">
								<h4>30-day Returns</h4>
								<p>oneyback guarantee</p>
							</div>
						</div>
					</div>
					<!-- Single Call to Action End -->
				</div>
			</div>
		</div>
	</section>
	<!--== End Call To Action ==-->

	<!--== Start Newsletter Area ==-->
	<div class="newsletter-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 m-auto">
					<!-- Newsletter Content Start -->
					<div
						class="newsletter-content-wrap text-center text-lg-left d-lg-flex">
						<h2>
							<i class="fa fa-envelope-square"></i> Sign up for Newsletter
						</h2>
						<div class="newsletter-form-wrap">
							<form id="subscribe-form" action="assets/php/subscribe.php"
								method="post">
								<input type="email" name="newsletter_email" id="address"
									placeholder="Enter Your Email Address" required />
								<button class="btn" type="submit">Subscribe</button>
							</form>
							<!-- Show Error & Success Message -->
							<div id="subscribeResult"></div>
						</div>
					</div>
					<!-- Newsletter Content End -->
				</div>

				<div class="col-lg-3 m-auto text-center text-lg-right">
					<!-- Social Icons Area Start -->
					<div class="social-icons">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-youtube"></i></a>
					</div>
					<!-- Social Icons Area End -->
				</div>
			</div>
		</div>
	</div>
	<!--== End Newsletter Area ==-->

	<!--== Start Footer Area ==-->
	<footer id="footer-area">
		<!-- Footer Widget Area Start -->
		<div class="footer-widget-area">
			<div class="container">
				<div class="footer-widget-content">
					<div class="row">
						<!-- Single Widget-item Start -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-widget-item">
								<h3 class="widget-title">About Market</h3>
								<div class="widget-body">
									<ul class="footer-list">
										<li><a href="#">My Account</a></li>
										<li><a href="#">Order History</a></li>
										<li><a href="#">Returns</a></li>
										<li><a href="#">Specials</a></li>
										<li><a href="#">Site Map</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Single Widget-item End -->

						<!-- Single Widget-item Start -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-widget-item">
								<h3 class="widget-title">Customer Service</h3>
								<div class="widget-body">
									<ul class="footer-list">
										<li><a href="#">Returns</a></li>
										<li><a href="#">Order History</a></li>
										<li><a href="#">My Account</a></li>
										<li><a href="#">Site Map</a></li>
										<li><a href="#">Specials</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Single Widget-item End -->

						<!-- Single Widget-item Start -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-widget-item">
								<h3 class="widget-title">Information</h3>
								<div class="widget-body">
									<ul class="footer-list">
										<li><a href="#">Order History</a></li>
										<li><a href="#">Site Map</a></li>
										<li><a href="#">Returns</a></li>
										<li><a href="#">Specials</a></li>
										<li><a href="#">My Account</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Single Widget-item End -->

						<!-- Single Widget-item Start -->
						<div class="col-lg-3 col-sm-6">
							<div class="single-widget-item">
								<h3 class="widget-title">Contact Us</h3>
								<div class="widget-body">
									<div class="contact-info">
										<div class="single-contact-info">
											<span class="contact-icon"> <i class="fa fa-home"></i>
											</span> <a href="mailto:your@example.com" class="contact-text">
												<strong>Address:</strong> 15/C, Uttara, Dhaka
											</a>
										</div>
										<div class="single-contact-info">
											<span class="contact-icon"> <i class="fa fa-phone"></i>
											</span> <a href="mailto:your@example.com" class="contact-text">
												<strong>Phone:</strong> (+1) 866-540-3229
											</a>
										</div>
										<div class="single-contact-info">
											<span class="contact-icon"> <i class="fa fa-envelope"></i>
											</span> <a href="mailto:your@example.com" class="contact-text">
												<strong>Email:</strong> your@email.here
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Single Widget-item End -->
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Widget Area End -->

		<!-- Footer Bottom Area -->
		<div class="footer-bttom-area">
			<div class="container">
				<div class="row">
					<!-- Copyright Text Area -->
					<div
						class="col-md-6 m-auto text-center text-md-left order-last order-md-first">
						<p>
							Copyright &copy; 2018.Company name All rights reserved.<a
								target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</p>
					</div>
					<!-- Copyright Text Area -->

					<!-- Payment Method Area -->
					<div class="col-md-6 m-auto text-center text-md-right">
						<div class="payment-support">
							<img src="assets/img/payment.png" alt="Payment"
								class="d-inline-block" />
						</div>
					</div>
					<!-- Payment Method Area -->
				</div>
			</div>
		</div>
		<!-- Footer Bottom Area -->
	</footer>
	<!--== End Footer Area ==-->

	<!-- Scroll to Top Start -->
	<a href="#" class="scrolltotop"><i class="fa fa-angle-up"></i></a>
	<!-- Scroll to Top End -->

	<!--== Product Quick View Modal Area Wrap ==-->
	<div class="modal" id="quickView" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><img
						src="assets/img/icons/cancel.png" alt="Close" class="img-fluid" /></span>
				</button>
				<div class="modal-body">
					<div class="quick-view-content single-product-page-content">
						<div class="row">
							<!-- Product Thumbnail Start -->
							<div class="col-lg-5 col-md-6">
								<div class="product-thumbnail-wrap">
									<div class="product-thumb-carousel owl-carousel">
										<div class="single-thumb-item">
											<a href="singleProduct.action?itemId="><img class="img-fluid"
												src="assets/img/single-pro-1.jpg" alt="Product" /></a>
										</div>

										<div class="single-thumb-item">
											<a href="singleProduct.action?itemId="><img class="img-fluid"
												src="assets/img/single-pro-2.jpg" alt="Product" /></a>
										</div>

										<div class="single-thumb-item">
											<a href="singleProduct.action?itemId="><img class="img-fluid"
												src="assets/img/single-pro-3.jpg" alt="Product" /></a>
										</div>

										<div class="single-thumb-item">
											<a href="singleProduct.action?itemId="><img class="img-fluid"
												src="assets/img/single-pro-4.jpg" alt="Product" /></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Product Thumbnail End -->

							<!-- Product Details Start -->
							<div class="col-lg-7 col-md-6 mt-5 mt-md-0">
								<div class="product-details">
									<h2>
										<a href="singleProduct.action?itemId=">Crown Summit Backpack</a>
									</h2>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i> <i
											class="fa fa-star-o"></i>
									</div>

									<span class="price">$62.00</span>

									<div class="product-info-stock-sku">
										<span class="product-stock-status text-success">In
											Stock</span> <span class="product-sku-status ml-5"><strong>SKU</strong>
											MH03</span>
									</div>

									<p class="products-desc">Ideal for cold-weathered training
										worked lorem ipsum outdoors, the Chaz Hoodie promises superior
										warmth with every wear. Thick material blocks out the wind as
										ribbed cuffs and bottom band seal in body heat Lorem ipsum
										dolor sit amet, consectetur adipisicing elit. Enim,
										reprehenderit.</p>
									<div class="shopping-option-item">
										<h4>Color</h4>
										<ul class="color-option-select d-flex">
											<li class="color-item black">
												<div class="color-hvr">
													<span class="color-fill"></span> <span class="color-name">Black</span>
												</div>
											</li>

											<li class="color-item green">
												<div class="color-hvr">
													<span class="color-fill"></span> <span class="color-name">green</span>
												</div>
											</li>

											<li class="color-item orange">
												<div class="color-hvr">
													<span class="color-fill"></span> <span class="color-name">Orange</span>
												</div>
											</li>
										</ul>
									</div>

									<div class="product-quantity d-flex align-items-center">
										<div class="quantity-field">
											<label for="qty">数量</label> <input type="number" id="qty"
												min="1" max="100" value="1" />
										</div>

										<a href="cart.html" class="btn">加入购物车</a>
									</div>
								</div>
							</div>
							<!-- Product Details End -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== Product Quick View Modal Area End ==-->

	<!--=======================Javascript============================-->
	<!--=== Jquery Min Js ===-->
	<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
	<!--=== Jquery Migrate Min Js ===-->
	<script src="assets/js/vendor/jquery-migrate-1.4.1.min.js"></script>
	<!--=== Popper Min Js ===-->
	<script src="assets/js/vendor/popper.min.js"></script>
	<!--=== Bootstrap Min Js ===-->
	<script src="assets/js/vendor/bootstrap.min.js"></script>
	<!--=== Ajax Mail Js ===-->
	<script src="assets/js/ajax-mail.js"></script>
	<!--=== Plugins Min Js ===-->
	<script src="assets/js/plugins.js"></script>

	<!--=== Active Js ===-->
	<script src="assets/js/active.js"></script>
	
	<script type="text/javascript">
	   $(function () {
		   $("figure .quickviewbtn").on('click', function () {
			  console.log("don't click me"); 
		   });
	   })
	</script>
</body>
</html>
