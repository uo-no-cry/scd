﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">

<title>Single Product</title>

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
							<a href="getMyCartList" id='myCartBtn'  class="btn btn-minicart">购物车</a>
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
									<li class="dropdown-show"><a href="index.action" class="">首页</a>
									</li>
									<li><a href="about.html">关于我们</a></li>
									<li class="dropdown-show"><a href="shop.action">商店</a></li>
									<li class="dropdown-show"><a href="#" class="arrow-toggle">Pages</a>
										<ul class="dropdown-nav">
											<li><a href="cart">Shopping Cart</a></li>
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
	</header>
	<!--== End Header Section ==-->

	<!--== Page Content Wrapper Start ==-->
	<div id="page-content-wrapper">
		<div class="container">
			<div class="row">
				<!-- Single Product Page Content Start -->
				<div class="col-lg-12">
					<div class="single-product-page-content">
						<div class="row">
							<!-- Product Thumbnail Start -->
							<div class="col-lg-5">
								<div class="product-thumbnail-wrap">
									<div class="product-thumb-carousel owl-carousel">

										<c:set value="${fn:split(item.itemImgs, ',') }" var="imgs"></c:set>
										<c:forEach items="${imgs }" var="img">
											<div class="single-thumb-item">
												<a href="singleProduct.action?itemId="><img
													class="img-fluid" src="${img }" alt="Product" /></a>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<!-- Product Thumbnail End -->

							<!-- Product Details Start -->
							<div class="col-lg-7">
								<div class="product-details">
									<h2>
										<a href="single-product.html">${item.itemName }</a>
									</h2>

									<div class="rating">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i> <i
											class="fa fa-star-o"></i>
									</div>

									<span class="price">￥${item.itemPrice / 100 }</span>

									<div class="product-info-stock-sku">
										<span class="product-stock-status text-success">In
											Stock</span> <span class="product-sku-status"><strong>SKU</strong>
											MH03</span>
									</div>

									<p class="products-desc">${item.itemName }真的很好吃，不骗你！</p>

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
										<form id="addForm" action="addItemToCart" method="post">
											<input type="hidden" id="itemId" value="${item.itemId }"
												name='itemId'>
											<div class="quantity-field">
												<label for="qty">数量</label> <input type="number"
													id="itemNum" min="1" max="100" value="1" name='itemNum' />
											</div>

											<button type="button" id="addItemToCartBtn"
												class="btn btn-cart-large">
												<i class="fa fa-shopping-cart"></i> 加入购物车
											</button>
										</form>
									</div>

									<div class="product-btn-group">
										<a href="wishlist.html" class="btn btn-round btn-cart"><i
											class="fa fa-heart"></i></a> <a href="compare.html"
											class="btn btn-round btn-cart"><i class="fa fa-exchange"></i></a>
										<a href="single-product-gruop.html"
											class="btn btn-round btn-cart"><i
											class="fa fa-envelope-o"></i></a>
									</div>
								</div>
							</div>
							<!-- Product Details End -->
						</div>

						<div class="row">
							<div class="col-lg-12">
								<!-- Product Full Description Start -->
								<div class="product-full-info-reviews">
									<!-- Single Product tab Menu -->
									<nav class="nav" id="nav-tab">
										<a class="active" id="description-tab" data-toggle="tab"
											href="#description">详情</a> <a id="reviews-tab"
											data-toggle="tab" href="#reviews">评价</a>
									</nav>
									<!-- Single Product tab Menu -->

									<!-- Single Product tab Content -->
									<div class="tab-content" id="nav-tabContent">
										<div class="tab-pane fade show active" id="description">
											<p>${item.itemDesc }</p>

											<ul>
												<li>特点1</li>
												<li>特点2</li>
												<li>特点3</li>
												<li>特点4</li>
											</ul>
										</div>

										<div class="tab-pane fade" id="reviews">
											<div class="row">
												<div class="col-lg-7">
													<div class="product-ratting-wrap">
														<div class="pro-avg-ratting">
															<h4>
																4.5 <span>(Overall)</span>
															</h4>
															<span>Based on 9 Comments</span>
														</div>
														<div class="ratting-list">
															<div class="sin-list float-left">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <span>(5)</span>
															</div>
															<div class="sin-list float-left">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o"></i> <span>(3)</span>
															</div>
															<div class="sin-list float-left">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
																	class="fa fa-star-o"></i> <span>(1)</span>
															</div>
															<div class="sin-list float-left">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																<i class="fa fa-star-o"></i> <span>(0)</span>
															</div>
														</div>
														<div class="rattings-wrapper">

															<div class="sin-rattings">
																<div class="ratting-author">
																	<h3>Cristopher Lee</h3>
																	<div class="ratting-star">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <span>(5)</span>
																	</div>
																</div>
																<p>enim ipsam voluptatem quia voluptas sit
																	aspernatur aut odit aut fugit, sed quia res eos qui
																	ratione voluptatem sequi Neque porro quisquam est, qui
																	dolorem ipsum quia dolor sit amet, consectetur,
																	adipisci veli</p>
															</div>

															<div class="sin-rattings">
																<div class="ratting-author">
																	<h3>Nirob Khan</h3>
																	<div class="ratting-star">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <span>(5)</span>
																	</div>
																</div>
																<p>enim ipsam voluptatem quia voluptas sit
																	aspernatur aut odit aut fugit, sed quia res eos qui
																	ratione voluptatem sequi Neque porro quisquam est, qui
																	dolorem ipsum quia dolor sit amet, consectetur,
																	adipisci veli</p>
															</div>

															<div class="sin-rattings">
																<div class="ratting-author">
																	<h3>MD.ZENAUL ISLAM</h3>
																	<div class="ratting-star">
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <i class="fa fa-star"></i>
																		<i class="fa fa-star"></i> <span>(5)</span>
																	</div>
																</div>
																<p>enim ipsam voluptatem quia voluptas sit
																	aspernatur aut odit aut fugit, sed quia res eos qui
																	ratione voluptatem sequi Neque porro quisquam est, qui
																	dolorem ipsum quia dolor sit amet, consectetur,
																	adipisci veli</p>
															</div>

														</div>
														<div class="ratting-form-wrapper">
															<h3>Add your Comments</h3>
															<form action="#" method="post">
																<div class="ratting-form row">
																	<div class="col-12 mb-4">
																		<h5>Rating:</h5>
																		<div class="ratting-star fix">
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i>
																			<i class="fa fa-star-o"></i>
																		</div>
																	</div>
																	<div class="col-md-6 col-12 mb-4">
																		<label for="name">Name:</label> <input id="name"
																			placeholder="Name" type="text">
																	</div>
																	<div class="col-md-6 col-12 mb-4">
																		<label for="email">Email:</label> <input id="email"
																			placeholder="Email" type="text">
																	</div>
																	<div class="col-12 mb-4">
																		<label for="your-review">Your Review:</label>
																		<textarea name="review" id="your-review"
																			placeholder="Write a review"></textarea>
																	</div>
																	<div class="col-12">
																		<input value="add review" type="submit">
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Single Product tab Content -->
								</div>
								<!-- Product Full Description End -->
							</div>
						</div>
					</div>
				</div>
				<!-- Single Product Page Content End -->
			</div>
		</div>
	</div>
	<!--== Page Content Wrapper End ==-->

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

	<!-- my script -->
	<script type="text/javascript">
		$(function() {
			/* 添加商品到购物车 */
			$('#addItemToCartBtn').on('click', function() {
				var itemId = $('#itemId').val();
				var itemNum = $('#itemNum').val();
				var data = '?itemId=' + itemId + '&itemNum=' + itemNum;
				console.log(data);
				$.ajax({
					url : 'addItemToCart' + data,
					dataType : 'json',
					type : 'get',
					success : function(rtn) {
						if (rtn.status == 200) {
							window.alert('加入购物车成功！');
						} else {
							window.alert(rtn.msg);
						}
					},
					error : function(rtn) {
						// 未登录
						var redirectURL = rtn.responseText;
						window.location.href = redirectURL;
					}
				})
			})
			
			/* 到购物车页面 */
			/* $('#myCartBtn').on('click', function () {
				$.ajax({
					url : 'getMyCartList',
				    type : 'post',
				    dataType : 'json',
				    success : function (rtn) {
				    	console.log(rtn)
				    },
                    error : function(rtn) {
                        // 未登录
                        var redirectURL = rtn.responseText;
                        window.location.href = redirectURL;
                    }
				})
			}) */
			
		})
	</script>
</body>
</html>
