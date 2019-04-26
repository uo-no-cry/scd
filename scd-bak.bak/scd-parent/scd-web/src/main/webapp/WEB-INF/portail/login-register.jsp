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
									<li class="dropdown-show"><a href="index.action" class="">首页</a>
									</li>
									<li><a href="about.html">关于我们</a></li>
									<li class="dropdown-show"><a href="shop.action" >商店</a></li>
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
	</header>
	<!--== End Header Section ==-->

	<!--== Start Page Breadcrumb ==-->
	<div class="page-breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-breadcrumb">
						<ul class="nav">
							<li><a href="index.html">首页</a></li>
							<li><a href="shop.html">商店</a></li>
							<li><a href="shop.html" class="active">用户</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--== End Page Breadcrumb ==-->

	<!--== Page Content Wrapper Start ==-->
	<div id="page-content-wrapper">
		<div class="container">
			<div class="member-area-from-wrap">
				<div class="row">
					<!-- Login Content Start -->
					<div class="col-lg-5">
						<div class="login-reg-form-wrap  pr-lg-50">
							<h2>已有账号？</h2>

							<form id='loginForm'>
								<div class="single-input-item">
									<input type="email" placeholder="用户名" required name='custName' />
								</div>

								<div class="single-input-item">
									<input type="password" placeholder="密码" required name='custPwd' />
								</div>

								<div class="single-input-item">
									<div
										class="login-reg-form-meta d-flex align-items-center justify-content-between">
										<div class="remember-meta">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="rememberMe"> <label
													class="custom-control-label" for="rememberMe">Remember
													Me</label>
											</div>
										</div>

										<a href="#" class="forget-pwd">忘记密码？</a>
									</div>
								</div>

								<div class="single-input-item">
									<button class="btn" id='loginBtn' type="button">登录</button>
								</div>
							</form>
						</div>
					</div>
					<!-- Login Content End -->

					<!-- Register Content Start -->
					<div class="col-lg-7 mt-30 mt-lg-0">
						<div class="login-reg-form-wrap">
							<h2>注册</h2>
							<form id='registerForm'>
								<div class="single-input-item">
									<input type="text" placeholder="用户名" required name='custName' />
								</div>

								<div class="single-input-item">
									<input type="email" placeholder="邮箱" required name='custEmail' />
								</div>

								<div class="single-input-item">
									<input type="text" placeholder="手机" required name='custPhone' />
								</div>

								<div class="row">
									<div class="col-lg-6">
										<div class="single-input-item">
											<input type="password" placeholder="密码" required
												name='custPwd' id='pwd' />
										</div>
									</div>

									<div class="col-lg-6">
										<div class="single-input-item">
											<input type="password" placeholder="重复输入密码" required
												id='repeatPwd' />
										</div>
									</div>
								</div>



								<div class="single-input-item">
									<button class="btn" type='button' id='registerBtn'>注册</button>
								</div>
							</form>
						</div>
					</div>
					<!-- Register Content End -->
				</div>
			</div>
		</div>
	</div>
	<!--== Page Content Wrapper End ==-->


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
		/* 获取URL函数 */
		function getRequest() {
			var url = decodeURI(location.search);
			var theRequest = new Object();
			if (url.indexOf("?") != -1) {
				var str = url.substr(1);
				var strs = str.split("&");
				for (var i = 0; i < strs.length; i++) {
					theRequest[strs[i].split("=")[0]] = strs[i].split("=")[1]
				}
			}
			return theRequest;
		}

		/* 获取重定向的地址 */
		var redirectURL = getRequest().redirectURL;
	    redirectURL = decodeURIComponent(redirectURL);
	    console.log(redirectURL)
		$(function() {
			/* 注册 */
			$('#registerBtn').on('click', function() {
				// 判读两次输入的密码是否一致
				if (!($('#pwd').val() == $('#repeatPwd').val())) {
					window.alert("两次密码不一致， 请重新输入");
					return;
				}

				var data = $('#registerForm').serialize();
				$.ajax({
					url : 'register.action',
					dataType : 'json',
					type : 'post',
					data : data,
					success : function(rtn) {
						if (rtn.status == 200) {
							window.alert('注册成功');
							window.location.href = 'login-register';
						} else {
							window.alert(rtn.msg);
						}
					}
				})
			})

			/* 登录 */
			$('#loginBtn').on('click', function() {
				var data = $('#loginForm').serialize();
				$.ajax({
					url : 'login.action',
					type : 'post',
					dataType : 'json',
					data : data,
					success : function(rtn) {
						if (rtn.status == 200) {
							window.alert('登录成功')
							if (redirectURL) {
								window.location.href=redirectURL;
							}
						} else {
							window.alert(rtn.msg)
						}
					}
				})
			})
		})
	</script>

</body>
</html>
