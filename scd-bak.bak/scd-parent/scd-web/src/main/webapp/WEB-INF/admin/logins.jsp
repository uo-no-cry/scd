﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>少吃点·后台管理系统 - 登录</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery.min.js"></script> 
    
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>
	<script>
       function sub1(){
    	   var loginData = $('#loginForm').serialize();
    	   var username = $('#adminName').val();
    	   $.ajax({
    		   url: 'logins.action',
    		   data: loginData,
    		   dataType: 'json',
    		   type: 'POST',
    		   success: function (rtn) {
    			   if (rtn.status == 200) {
    				   window.location.href='/admin/index.action?token=' + rtn.data;
    			   } else {
    				   window.alert(rtn.msg);
    			   }
    		   }
    	   })
       }
       
       $(function () {
  	     //点击图片更换验证码
  	     $("#Verify").click(function(){
  	         $(this).attr("src","SecurityCodeImageAction.action?timestamp="+new Date().getTime());
  	     });
  	 });
    </script>
</head>

<body class="signin">
<!-- <script src="js/canvas-nest.min.js" count="200" zindex="-2" opacity="0.8" color="46,190,246" type="text/javascript"></script> -->
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-12">
             <form id="loginForm" autocomplete="off">
                    <h3 class="no-margins">少吃点·后台管理系统 - 登录</h3>
                   
                    <input autocomplete="off" type="text" id='adminName' class="form-control uname" name="adminName" placeholder="用户名" value=""/>
                    <input autocomplete="off" type="password" class="form-control pword m-b" name="password" placeholder="密码" value=""/>
                    <input name="verifycode" class="form-control pword m-b" type="text" placeholder="验证码" onblur="if(this.value==''){this.value=''}" onclick="if(this.value=='验证码:'){this.value='';}" value="" style="width: 190px;">
          			<img src="images/securitycodeimageaction.action"  id="Verify" style="cursor:hand;height: 30px;float: right;margin-top: -45px;" alt="看不清，换一张"/>
                    <button type="button" class="btn btn-success btn-block" onclick="sub1()" >登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
            </div>
        </div>
    </div>
</body>
</html>