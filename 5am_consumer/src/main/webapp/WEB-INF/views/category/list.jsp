<%@ include file="/WEB-INF/views/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="js/bootstrap.js"></script>
<!-- Carousel
    ================================================== -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<a href="/category/list?cate='식음료'"><img class="first-slide"
				src="images/ba.jpg" alt="First slide"></a>

		</div>
		<div class="item">
			<a href="/category/list?cate='화장품'"> <img class="second-slide "
				src="images/ba1.jpg" alt="Second slide"></a>

		</div>
		<div class="item">
			<a href="/category/list?cate='식음료'"><img class="third-slide "
				src="images/ba2.jpg" alt="Third slide"></a>

		</div>
	</div>
	 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
	

</div>

<!-- /.carousel -->

<!--content-->
<div class="kic-top ">
	<div class="container ">
		<div class="kic ">
			<h3>${cate}</h3>

		</div>
		<div class="col-md-4 kic-top1">
			<a href="single.html"> <img src="images/ki.jpg"
				class="img-responsive" alt="">
			</a>
			<h6>Dal</h6>
			<p>Nam libero tempore</p>
		</div>
		<div class="col-md-4 kic-top1">
			<a href="single.html"> <img src="images/ki1.jpg"
				class="img-responsive" alt="">
			</a>
			<h6>Snacks</h6>
			<p>Nam libero tempore</p>
		</div>
		<div class="col-md-4 kic-top1">
			<a href="single.html"> <img src="images/ki2.jpg"
				class="img-responsive" alt="">
			</a>
			<h6>Spice</h6>
			<p>Nam libero tempore</p>
		</div>
	</div>
</div>

<!--content-->
<div class="product">
	<div class="container">
		<div class="spec ">
			<h3>등록된 상점</h3>
			<div class="ser-t">
				<b></b> <span><i></i></span> <b class="line"></b>
			</div>
		</div>
		<!--search  -->
		
		<div class=" con-w3l agileinf">
			
			
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

<!-- product -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-info">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body modal-spa">
				<div class="col-md-5 span-2">
					<div class="item">
						<img src="images/of27.png" class="img-responsive" alt="">
					</div>
				</div>
				<div class="col-md-7 span-1 ">
					<h3>Rice(500 g)</h3>
					<p class="in-para">There are many variations of passages of
						Lorem Ipsum.</p>
					<div class="price_single">
						<span class="reducedfrom "><del>$4.00</del>$3.50</span>

						<div class="clearfix"></div>
					</div>
					<h4 class="quick">Quick Overview:</h4>
					<p class="quick_desc">Nam liber tempor cum soluta nobis
						eleifend option congue nihil imperdiet doming id quod mazim
						placerat facer possim assum. Typi non habent claritatem insitam;
						es</p>
					<div class="add-to">
						<button class="btn btn-danger my-cart-btn my-cart-btn1 "
							data-id="27" data-name="Rice" data-summary="summary 27"
							data-price="3.50" data-quantity="1" data-image="images/of27.png">Add
							to Cart</button>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>

<!-- modal -->
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img id="storeimg" src="" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3>StoreName</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
									 <div class="add-to">
										   <button id="cartBtn" class="my-cart-btn my-cart-btn1 " data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Add to Cart</button>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>


<!-- modal -->

<%@ include file="/WEB-INF/views/footer.jsp" %>

<script type='text/javascript' src="js/jquery.mycart.js"></script>
<script>
	$(document).ready(function() {
		

			console.log("category in???")

			var page = 1;
			/* var scategory=$(this).data('category'); */
			var scategory = '${cate}'
		
			/* 	console.log($(this).data('category'));
			 */
			function init() {

				$.ajax({

					url : '/category/list',
					type : 'post',
					dataType : 'json',
					data : {
						scategory : scategory,
						page : page
					},
					success : function(data) {
						console.log(data);
						if(data.length!=0){
    		    			adlist(data);
    		    		}else{
    		    			alert("더이상의 결과가 없습니다.")
    		    		}
					},
			        beforeSend: function () {
                        var width = 0;
                        var height = 0;
                        var left = 0;
                        var top = 0;
                        width = 70;
                        height = 70;
                        top = ( $(window).height() - height ) / 2 + $(window).scrollTop();
                        left = ( $(window).width() - width ) / 2 + $(window).scrollLeft();
                        if($("#div_ajax_load_image").length != 0) {
                               $("#div_ajax_load_image").css({
                                      "top": top+"px",
                                      "left": left+"px"
                               });
                               $("#div_ajax_load_image").show();
                        }
                        else {
                               $('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height
                               + 'px; z-index:9999; background:transparent; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="images/loading.gif" style="width:70px; height:70px;"></div>');
                        }
                      },
                    complete: function () {$("#div_ajax_load_image").hide();},

				});
			}
			init();
		
			 
			 var idnum = 1;
		    	var page = 1;
		    	
		    	function adlist(list){
		    		 
		    		 var str="";
		    		 
		    		 $.each(list, function(index, value) {
		    			 
		    			 
		    			 
		    			 str+='<div class="col-md-3 m-wthree" style="margin-bottom:10px;margin-top:10px"><div class="col-m"><a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img" data-name="'+value.sid+'"  data-src="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif">'
		    					+'<img src="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div></a>'
		    					+'<div class="mid-1"><div class="women">'
		    					+'<h6><a href="single.html">'+value.sid+'</a></h6></div><div class="mid-2">'
		    					+'<p><label>$2.00</label><em class="item_price">$1.50</em></p>'
		    				  	+'<div class="block"><div class="starbox small ghosting"> </div></div>'
		    					+'<div class="clearfix"></div></div><div class="add">'
		    				  	+'<button class="btn my-cart-btn my-cart-b" data-id="'+ idnum++ +'" data-name="'+value.sid+'" data-summary="summary'+idnum+'" data-price="1.50" data-quantity="1" data-image="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif">Add to Cart</button>'
		    					+'</div></div></div></div>'
		    			 
		    					
		    			 
		    			}); 
		    		 
		    		 mid_adv='<div class="clearfix"></div> <div class="col-md-4 m-w3ls1">'
		    			 +' <div class="col-md "><a href="hold.html"> <img src="images/co.jpg" class="img-responsive img" alt="">'
		    			 +'    <div class="big-sale">'
		    			 +'       <div class="big-sale1"><h3>Big <span>Sale</span></h3>'
		    			 +'           <p>It is a long established fact that a reader </p></div>'
		    			 +'   </div></a></div></div>'
		    			 +'  <div class="col-md-4 m-w3ls1">'
		    			 +'<div class="col-md "><a href="hold.html"> <img src="images/co.jpg" class="img-responsive img" alt="">'
		    			 +'   <div class="big-sale">'
		    			 +'      <div class="big-sale1"><h3>Big <span>Sale</span></h3><p>It is a long established fact that a reader </p></div>'
		    			 +'</div></a></div></div>'
		    			 +' <div class="col-md-4 m-w3ls">'
		    			 +' <div class="col-md2 "><a href="kitchen.html"> <img src="images/co2.jpg" class="img-responsive img1" alt="">'
		    			 +' <div class="big-sale2"><h3>Cooking <span>Oil</span></h3>'
		    			 +'    <p>It is a long established fact that a reader </p></div>'
		    			 +' </a></div>'
		    			 +'  <div class="col-md3 "><a href="hold.html"> <img src="images/co3.jpg" class="img-responsive img1" alt="">'
		    			 +'    <div class="big-sale3"><h3>Vegeta<span>bles</span></h3>'
		    			 +'        <p>It is a long established fact that a reader </p></div>'
		    			 +'  </a></div></div><div class="clearfix"></div>'
		    		 
		    		 	$(".agileinf").append(str +mid_adv);
		    			 
		    			 $(".offer-img").on("click",function(){
		    				 
		    				 console.log("click!!");
		    				 console.log($("#cartBtn"));
		    				 console.log(idnum);
		    				 $("#in1").val($(this).data("name"));
		    				 $(".span-1 h3").html($(this).data("name"));
		    				 $("#storeimg").attr("src",$(this).data("src"));
		    				
		   					 $("#cartBtn").data("name",$(this).data("name"));
		       				 $("#cartBtn").data("image",$(this).data("src"));
		       				 $("#cartBtn").data("summary","summary"+idnum);
		       				 $("#cartBtn").data("id",idnum++);
		       				 $("#put").val($(this).data("name"));
		       				 
		        			 
		    			 });
		    			 
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
		    			 
		    			 $('.agileinf .my-cart-btn').myCart({
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
		    		
		    		 
		    	}
		    		
		    	
		    		
		    		
		    		
		    		
		    		$(document).scroll(
		    				function() {
		    					var maxHeight = $(document).height();
		    					var currentScroll = $(window).scrollTop() + $(window).height();

		    					if (maxHeight <= currentScroll) {
		    						console.log("down");
		    						page = page + 1;
		    						init();

		    					};

		    				});
		    		
		    		$().UItoTop({ easingType: 'easeOutQuart' });
			 
			 

		
	})
</script>
