<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Login</h3>
		<h4><a href="index.html">Home</a><label>/</label>Login</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login">
	
		<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login</h3>
					<form action="#" method="post">
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input  type="text" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="Login">
					</form>
<!--facebook Login start  -->
			<div id="fb-root"></div>
<script>

function statusChangeCallback(response) { 
	console.log('statusChangeCallback'); 
	console.log(response);

if (response.status === 'connected') {
	testAPI(); 
	} 


}

function checkLoginState() { 
	FB.getLoginStatus(function(response) {
		statusChangeCallback(response); 
		}); 
	} 
	

window.fbAsyncInit = function() { 
	FB.init({ appId : '1600320570002277', 
		      cookie : true,
		      xfbml  : true,
		      version: 'v2.1'
	})

FB.getLoginStatus(function(response) { 
	statusChangeCallback(response);
		}); 
	
		
	}; 
	

(function(d, s, id) { 
	var js, fjs = d.getElementsByTagName(s)[0]; 
	if (d.getElementById(id)) return; 
	js = d.createElement(s); 
	js.id = id; js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=1600320570002277"; 
	fjs.parentNode.insertBefore(js, fjs); 
	}(document, 'script', 'facebook-jssdk')); 
// 로그인이 성공한 다음에는 간단한 그래프API를 호출한다. 
// 이 호출은 statusChangeCallback()에서 이루어진다. 
function testAPI() { 
	FB.api('/me',{fields: 'name,email,gender'},function(response) {

	$.ajax({
		url:"/login",
		 data:{
			 
            "name" : response.name,
            "email":response.email,
            "gender":response.gender
		 
        },
        dataType : "json",
		type:'post',
		success: function(vo){
        
			console.log(vo.name);
			
            }

	})
});
	
} 
</script> 
<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="true" data-use-continue-as="false"></div>
<!--facebook Login end  -->

<!--google Login start  -->
<!-- Include the API client and Google+ client. -->
<script src="https://plus.google.com/js/client:platform.js" async defer></script>
<div id="gConnect" class="button">
		<button class="g-signin" data-scope="email"
			data-clientid="AIzaSyBxaNS0WZxCWFOf4f0prjbFivo076oGSwA.apps.googleusercontent.com"
			data-callback="onSignInCallback" data-theme="dark"
			data-cookiepolicy="single_host_origin"></button>
		<!-- Textarea for outputting data -->
		<div id="response" class="hide">
			<textarea id="responseContainer" style="width: 100%; height: 150px"></textarea>
		</div>
	</div>

<script>
	/**
	 * Handler for the signin callback triggered after the user selects an account.
	 */
	function onSignInCallback(resp) {
		gapi.client.load('plus', 'v1', apiClientLoaded);
	}

	/**
	 * Sets up an API call after the Google API client loads.
	 */
	function apiClientLoaded() {
		gapi.client.plus.people.get({
			userId : 'me'
		}).execute(handleEmailResponse);
	}

	/**
	 * Response callback for when the API client receives a response.
	 *
	 * @param resp The API response object with the user email and profile information.
	 */
	function handleEmailResponse(resp) {
		var primaryEmail;
		for (var i = 0; i < resp.emails.length; i++) {
			if (resp.emails[i].type === 'account')
				primaryEmail = resp.emails[i].value;
		}
		document.getElementById('responseContainer').value = 'Primary email: '
				+ primaryEmail + '\n\nFull Response:\n' + JSON.stringify(resp);

		console.log("resp");
		console.log(resp);
		console.log(JSON.stringify(resp));
		console.log(resp.displayName);
		console.log(resp.emails[0].value);
		console.log(resp.gender);
		
		
	
		
		
		$.ajax({
			url: '/login',
			method: 'post',
		    dataType: 'JSON',		    
		    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		    data: {
		    	name : resp.displayName ,
		    	email: resp.emails[0].value,
		    	gender:resp.gender
		    	
		    } ,
		    success: function(re) {
		  
				console.log(re.name);
				console.log(re.email);
				console.log(re.gender);
		        
		    },
		});
		

	}
</script>
	<!--google Login end  -->
	<!--naver Login start  -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<div id="naver_id_login"></div>
	<script type="text/javascript">
  	var naver_id_login = new naver_id_login("VGj7n1FTUga3PmTRQzjP", "https://5am.zz.am/callback");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://5am.zz.am/index");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
  <!--naver Login end  -->
			<div class="header-ri">
				<ul class="social-top">
					<li><a href="#" class="icon facebook"><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon twitter"><i class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon pinterest"><i class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
					<li><a href="#" class="icon dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
				</ul>	
			</div>
				</div>
				<div class="forg">
					<a href="#" class="forg-left">Forgot Password</a>
					<a href="register.html" class="forg-right">Register</a>
				<div class="clearfix"></div>
				</div>
			</div>
		</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<script type='text/javascript' src="js/jquery.mycart.js"></script>
  <script type="text/javascript">
  $(function () {

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });

  });
  </script>

</body>
</html>