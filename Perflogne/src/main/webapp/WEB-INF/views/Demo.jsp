<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%> --%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="resources/css/chocolat.css" type="text/css" media="screen" charset="utf-8">			  
			<link href="resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
			<link rel="stylesheet" href="resources/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
			<link href="resources/css/style4.css" rel="stylesheet" type="text/css" media="all" />	
</head>
<body>
<!--header-->
<div class="header">
<div class="container">
		<div class="head">
			<div class=" logo">
				<a href="index.html"><img src="resources/imagesN/logon.png" alt=""></a>	
			</div>
		</div>
	</div>
	<div class="header-top">
		<div class="container">
		<div class="col-sm-5 col-md-offset-2  header-login">
					<ul >
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="checkout.html">Checkout</a></li>
					</ul>
				</div>
				
			<div class="col-sm-5 header-social">		
					<ul >
						<li><a href="#"><i></i></a></li>
						<li><a href="#"><i class="ic1"></i></a></li>
						<li><a href="#"><i class="ic2"></i></a></li>
						<li><a href="#"><i class="ic3"></i></a></li>
						<li><a href="#"><i class="ic4"></i></a></li>
					</ul>
					
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
		
		<div class="container">
		
			<div class="head-top">
			
		 <div class="col-sm-8 col-md-offset-2 h_menu4">
				<nav class="navbar nav_bottom" role="navigation">
 
 <!-- Brand and toggle get grouped for better mobile display -->
  <div class="navbar-header nav_2">
      <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
   </div> 
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        <c:forEach items="${categorylist}" var="categorylist" > 
        <ul class="nav navbar-nav nav_1">
    		<!-- for brands -->
			<li class="dropdown mega-dropdown active">
			    <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">${categorylist.categoryName}<span class="caret"></span></a>				
				<div class="dropdown-menu ">
                    <div class="menu-top">
						<div class="col1">
							<div class="h_nav">
									<ul>
										<li><a href="product.html">A</a></li>
										<li><a href="product.html">B</a></li>
										<li><a href="product.html">C</a></li>
										<li><a href="product.html">D</a></li>
										
									</ul>	
							</div>							
						</div>
						
						<div class="col1 col5">
						<img src="" class="img-responsive" alt="">
						</div>
						<div class="clearfix"></div>
					</div>                  
				</div>				
			</li>
			
			
			 <!-- for deodrants -->
			<li class="dropdown mega-dropdown active">
			    <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Deodorants<span class="caret"></span></a>				
				<div class="dropdown-menu ">
                    <div class="menu-top">
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu1</h4>
									<ul>
										<li><a href="product.html">A</a></li>
										<li><a href="product.html">B</a></li>
										<li><a href="product.html">C</a></li>
										<li><a href="product.html">H</a></li>
										
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu2</h4>
								<ul>
										<li><a href="product.html">Jackets & Coats</a></li>
										<li><a href="product.html">Jeans</a></li>
										<li><a href="product.html">Jewellery</a></li>
										<li><a href="product.html">Jumpers & Cardigans</a></li>
										<li><a href="product.html">Leather Jackets</a></li>
										<li><a href="product.html">Long Sleeve T-Shirts</a></li>
									</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu3</h4>
									<ul>
										<li><a href="product.html">Shirts</a></li>
										<li><a href="product.html">Shoes, Boots & Trainers</a></li>
										<li><a href="product.html">Sunglasses</a></li>
										<li><a href="product.html">Sweatpants</a></li>
										<li><a href="product.html">Swimwear</a></li>
										<li><a href="product.html">Trousers & Chinos</a></li>
										
									</ul>	
								
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>Submenu4</h4>
								<ul>
									<li><a href="product.html">T-Shirts</a></li>
									<li><a href="product.html">Underwear & Socks</a></li>
									<li><a href="product.html">Vests</a></li>
									<li><a href="product.html">Jackets & Coats</a></li>
									<li><a href="product.html">Jeans</a></li>
									<li><a href="product.html">Jewellery</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1 col5">
						<img src="" class="img-responsive" alt="">
						</div>
						<div class="clearfix"></div>
					</div>                  
				</div>				
			</li>
			
			<li><a class="color3" href="product.html">Sale</a></li>
			<li><a class="color4" href="404.html">About</a></li>
            <li ><a class="color6" href="contact.html">Contact</a></li>
           
        </ul>
        </c:forEach>
     </div><!-- /.navbar-collapse -->

</nav>
			</div>
			<div class="col-sm-2 search-right">
				<ul class="heart">
				<li>
				<a href="wishlist.html" >
				<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
				</a></li>
				<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
					</ul>
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span></div>
							<img src="resources/imagesN/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

					</div>
					<div class="clearfix"> </div>
					
						

						
		
			<div id="small-dialog" class="mfp-hide">
				<div class="search-top">
					<div class="login-search">
						<input type="submit" value="">
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">		
					</div>
					<p>PerfLogne</p>
				</div>				
			</div>
			
						
			</div>
			<div class="clearfix"></div>
		</div>	
	</div>	
</div>
<!--banner-->
<div class="banner">
<div class="container">
<section class="rw-wrapper">
				<h1 class="rw-sentence">
					<span>Perfume &amp; Cologne</span>
					<div class="rw-words rw-words-1">
						<span>DONT FEEL SAD</span>
						<span>PERFUME</span>
					</div>
					<div class="rw-words rw-words-2">
						<span>Go Outside nd Smell Sumthing Nice</span>
						<span>IS THE KEY TO OUR MEMORIES</span>
						<span>KEEP CALM AND SPRAY ON!</span>
					</div>
				</h1>
			</section>
			</div>
</div>
	<!--content-->
		<div class="content">
			<div class="container">
				<div class="content-top">
					<div class="col-md-6 col-md">
						<div class="col-1">
						 <a href="single.html" class="b-link-stroke b-animate-go  thickbox">
		   <img src="resources/imagesN/fogg.jpg" class="img-responsive" alt=""/><div class="b-wrapper1 long-img"><p class="b-animate b-from-right    b-delay03 ">FOGG</p><label class="b-animate b-from-right    b-delay03 "></label><h3 class="b-animate b-from-left    b-delay03 ">Trendy</h3></div></a>

							<!---<a href="single.html"><img src="images/pi.jpg" class="img-responsive" alt=""></a>-->
						</div>
						<div class="col-2">
							<span>Hot Deal</span>
							<h2><a href="single.html">Luxurious &amp; Trendy</a></h2>
							<p>Fogg is without gas body spray product. It has long lasting fragrance and guaranteeing 800 sprays for a single Fogg bottle.</p>
							<a href="single.html" class="buy-now">Buy Now</a>
						</div>
					</div>
					<div class="col-md-6 col-md1">
						<div class="col-3">
							<a href="single.html"><img src="resources/imagesN/pi1.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>Perfume & Cologne</p>
								<label></label>
								<h5>For Men</h5>
							</div></a>
						</div>
						<div class="col-3">
							<a href="single.html"><img src="resources/imagesN/zara.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>ZARA</p>
								<label></label>
								<h5>Summer Collection</h5>
							</div></a>
						</div>
						<div class="col-3">
							<a href="single.html"><img src="resources/imagesN/pi3.jpg" class="img-responsive" alt="">
							<div class="col-pic">
								<p>Perfume & Cologne</p>
								<label></label>
								<h5>For Women</h5>
							</div></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<!--products-->
			<div class="content-mid">
				<h3>Trending Items</h3>
				<label class="line"></label>
				<div class="mid-popular">
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Women</span>
							<h6><a href="single.html">S</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Women</span>
							<h6><a href="single.html">A</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Men</span>
							<h6><a href="single.html">S</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Women</span>
							<h6><a href="single.html">O</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="clearfix"></div>
				</div>
								<div class="mid-popular">
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Men</span>
							<h6><a href="single.html">On the other</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Men</span>
							<h6><a href="single.html">S</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Women</span>
							<h6><a href="single.html">A</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100.00</label><em class="item_price">70.00</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="col-md-3 item-grid simpleCart_shelfItem">
					<div class=" mid-pop">
					<div class="pro-img">
						<img src="" class="img-responsive" alt="">
						<div class="zoom-icon ">
						<a class="picture" href="resources/imagesN/pc7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
						<a href="single.html"><i class="glyphicon glyphicon-menu-right icon"></i></a>
						</div>
						</div>
						<div class="mid-1">
						<div class="women">
						<div class="women-top">
							<span>Men</span>
							<h6><a href="single.html">S</a></h6>
							</div>
							<div class="img item_add">
								<a href="#"><img src="resources/imagesN/ca.png" alt=""></a>
							</div>
							<div class="clearfix"></div>
							</div>
							<div class="mid-2">
								<p ><label>100</label><em class="item_price">70</em></p>
								  <div class="block">
									<div class="starbox small ghosting"> </div>
								</div>
								
								<div class="clearfix"></div>
							</div>
							
						</div>
					</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--//products-->
			<!--brand-->
			<div class="brand">
				<div class="col-md-3 brand-grid">
					<img src="resources/imagesN/b1.jpg" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="resources/imagesN/b2.jpg" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="resources/imagesN/b3.jpg" class="img-responsive" alt="">
				</div>
				<div class="col-md-3 brand-grid">
					<img src="resources/imagesN/b4.jpg" class="img-responsive" alt="">
				</div>
				<div class="clearfix"></div>
			</div>
			<!--//brand-->
			</div>
			
		</div>
		
	<!--//content-->
	<!--//footer-->
	<div class="footer">
	<div class="footer-middle">
				<div class="container">
					<div class="col-md-3 footer-middle-in">
						<a href="Demo.html"><img src="resources/imagesN/logof.png" alt=""></a>
						<p></p>
					</div>
					
					<div class="col-md-3 footer-middle-in">
						<h6>Information</h6>
						<ul class=" in">
							<li><a href="404.html">About</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="contact.html">Site Map</a></li>
						</ul>
						<ul class="in in1">
							<li><a href="#">Order History</a></li>
							<li><a href="wishlist.html">Wish List</a></li>
							<li><a href="login.html">Login</a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Categories</h6>
						<ul class="tag-in">
							<li><a href="#">Brands</a></li>
							<li><a href="#">Deodorants</a></li>
							<li><a href="#">Perfumes</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer-middle-in">
						<h6>Newsletter</h6>
						<span>Sign up for News Letter</span>
							<form>
								<input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
								<input type="submit" value="Subscribe">	
							</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<ul class="footer-bottom-top">
						<li><a href="#"><img src="resources/imagesN/f1.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="resources/imagesN/f2.png" class="img-responsive" alt=""></a></li>
						<li><a href="#"><img src="resources/imagesN/f3.png" class="img-responsive" alt=""></a></li>
					</ul>
					<p class="footer-class">&copy; 2016 PerfLogne. All Rights Reserved | Design by <a href="" target="_blank">Shubham</a> </p>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!--//footer-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
	
<script src="resources/js/simpleCart.min.js"> </script>
<script src="resources/js/jstarbox.js"></script>
<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
			
		<script src="resources/js/jquery.chocolat.js"></script>
		 <script type="text/javascript" charset="utf-8">
		$(function() {
			$('a.picture').Chocolat();
		});
		</script>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
theme-style


	
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
			
-//End-rate--
 <script>
			$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
			});
																						
			});
		</script>
		
	
	</body>
	</html>
	
		
		

