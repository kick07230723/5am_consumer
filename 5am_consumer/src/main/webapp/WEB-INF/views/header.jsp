<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<base href="/resources/">
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<head>
<title>5AM입니다</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body class="fade-in">
<div class="header">

		<div class="container">
			
			<div class="logo" style="margin-bottom: 5%">
				<h1 ><a href="/index"><span>t h e </span>5 A M</a></h1>
			</div>

		


		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav "  style="font-size: 20px">
							<li ><a href="/index" class="hyper "><span >Home</span></a></li>	
							
							<li class="dropdown ">
								<a href="#" class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Kitchen<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>식음료</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>화장품</a></li>
												<li><a href="/kitchen/list"> <i class="fa fa-angle-right" aria-hidden="true"></i>의약 &amp;건강</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>교양 &amp; 오락</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>생활잡화</a></li>
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>교육 &amp; 단체</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>레저 &amp; 스포츠</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>패션</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>주택 &amp; 가구</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>금융</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>컴퓨터 &amp; 주변기기</a></li>
												
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>전자 &amp; 통신</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>유통</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>수송</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>인터넷</a></li>
												<li><a href="/kitchen/list"><i class="fa fa-angle-right" aria-hidden="true"></i>서비스 &amp; 기타</a></li>
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="/kitchen"><img src="images/me.png" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							
							<li><a href="/qna/list" class="hyper"> <span> Q & A</span></a></li>
							<li><a href="/contact/list" class="hyper"><span>Contact Us</span></a></li>
						</ul>
					</div>
					</nav>
					<div class="cart" style="height:25px; font-size: 20px">
						<a href="/login/main"><i class="fa fa-user" aria-hidden="true" style="margin-left:10px; "></i>Login</a >
						<a href="/register/main" ><i class="fa fa-arrow-right" aria-hidden="true" style="margin-left:10px"></i>Register</a>
						<span  style="margin-left:10px"class="fa fa-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
					</div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>
  <!-- header 끝!!!-->
  