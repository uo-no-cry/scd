﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title> 少吃点-后台管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    
    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<input style="display: none" id="usersession" value="1">
<input style="display: none" id="dlsession" value="">
    <div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        
                                        <strong class="font-bold">少吃点-网上零食店</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div>
                            
                        </div>
                        <div class="logo-element">
                        	<c:if test="${not empty adminInfo.adminName }">
                                <label class='adminName'>管理员：${adminInfo.adminName }</label>
                            </c:if>
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">主页管理</span>
                    </li>
                     <li>
                        <a href="#">
                        <i class="fa fa-calendar"></i>
                            <span class="nav-label">广告管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="banner.html">banner 广告位列表</a>
                            </li>
                            <li>
                                <a class="J_menuItem" href="sjbanner.html">手机banner 广告位列表</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a class='J_menuItem' href="home-product">
                            <i class="fa fa-group"></i>
                            <span class="nav-label">主页-商品</span>
                        </a>
                   	 </li>
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">商品管理</span>
                    </li>
                    <li>
                    <li>
                        <a href="#">
                        	<i class="fa fa-calendar"></i>
                            <span class="nav-label">订单管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                    		<li>
                            	<a class="J_menuItem" href="dingdanliebiao.html">订单列表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="yifahuoliebiao.html">已发货列表</a>
                            </li>
                             <li>
                            	<a class="J_menuItem" href="yiwanchengliebiao.html">已完成列表</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="dingdandaochu.html">订单导出</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                    	<a href="product-manage" class="J_menuItem">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">商品管理</span>
                        </a>
                    </li>
                    
                    
                    
           			
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">信息管理</span>
                    </li>
                     <li>
                        <a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">文章管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="wenzhangliebiao.html">文章列表</a></li>
                            <li><a class="J_menuItem" href="wenzhangtianjia.html">添加文章</a></li>
                        </ul>
                    </li>
                   
                    
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">支付管理</span>
                    </li>
                    
                    <li>
                        <a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">支付管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="zhifubaoshezhi.html">支付宝设置</a></li>
                            <li><a class="J_menuItem" href="weixinshezhi.html">微信设置</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">其他管理</span>
                    </li>
                    <li>
                        <a href="">
                        	<i class="fa fa-pencil-square-o"></i>
                            <span class="nav-label">用户设置</span>
                        </a>
                        
                    </li>
                   
                    <li>
                        <a href="#">
                        	<i class="fa fa-cogs"></i>
                            <span class="nav-label">系统管理员</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                            	<a class="J_menuItem" href="tianjiaguanliyuan.html">添加管理员</a>
                            </li>
                            <li>
                            	<a class="J_menuItem" href="guanliyuanliebiao.html">管理员列表</a>
                            </li>
                            
                        </ul>
                    </li>
                    
                     
                    
                    <li class="line dk"></li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;</li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    
                    <ul class="nav navbar-top-links navbar-right">
                    	  
                        	  <li class="dropdown">
                           		 <a class="dropdown-toggle count-info" data-toggle="" href="javascript:void()" title="退出" onclick="logout()">
                           		   <c:if test="${not empty adminInfo.adminName }">
                           		       <label class='adminName'>${adminInfo.adminName }</label>
                           		   </c:if>
                            	  <i class="fa fa-power-off"></i> <span class="label label-warning"></span>
                           		 </a>
                            	<ul class="dropdown-menu dropdown-messages" style="width: 100px;padding: 0px;">
                            	</ul>
                        	</li>
                       	 
                      	  
                    </ul>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="/admin/welcome.html" frameborder="0" data-id="welcome.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/jquery.metisMenu.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript">
        function logout() {
            $.ajax({
            	url: '/admin/logout/${cookie.ADMIN_COOKIE_TOKEN_KEY}',
            	dataType: 'json',
            	type: 'get',
            	success: function (rtn) {
            		if (rtn.status == 200) {
            			//$('.adminName').html('');
            			window.alert('退出成功');
            			window.location.href = '/admin/logins';
            		} else {
            			window.alert(rtn.msg);
            		}
            	}
            })
        }
        
    	$(document).ready(function(){
    		
    	});
    </script>
    <!-- 第三方插件 -->
    <script src="js/plugins/pace/pace.min.js"></script>
	
</body>

</html>
