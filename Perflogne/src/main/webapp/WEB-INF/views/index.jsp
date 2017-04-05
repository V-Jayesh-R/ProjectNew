<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<link rel="stylesheet"
	href="resources/css/megamenu.css">
	<link rel="stylesheet" href="resources/css/style.css">
	<link rel="stylesheet" href="resources/css/ie.css">
	<div class="container">
		<div class="row row-pb-md">
			<div class="col-md-2">
				<h1></h1>
			</div>
			<div class="col-md-8">
				<center>PerFlogne</center>
			</div>
			
			<div class="col-md-2" >
				<a href="login"><span class="glyphicon glyphicon-user gi-3x"></span></a>
				<span class="btn-separator"></span>
				<a href="cartlist"><span class="glyphicon glyphicon-shopping-cart gi-4x"></span></a>
			
			</div>	
		</div>
	</div>
	
	
	<div class="container">
  <nav class="navbar navbar-default">
    <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">My Store</a>
	</div>
	
	<div class="collapse navbar-collapse js-navbar-collapse">
	<c:forEach items="${categorylist}" var="categorylist" >
		<ul class="nav navbar-nav">
			<li class="dropdown mega-dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">${categorylist.categoryName}<span class="caret"></span></a>				
				<ul class="dropdown-menu mega-dropdown-menu">
					<li class="col-sm-12">
						<ul>
							<c:forEach var="subCategory" items="${categorylist.subCategory}">
								<div class="dropdown">
									<div class="col-md-2">
 										<button class="dropbtn">${subCategory.subCategoryName}</button>
  											<div class="dropdown-content">
  												<div class="row">
    												<a href="#"><c:forEach var="brand" items="${subCategory.brand}">
														<div class="col-md-12">
															<ul>
																<li><a href="#">${brand.brandName}</a></li>
															</ul>
														</div>
																</c:forEach> 
													</a>
												</div>
											</div> 
										</div>
								</div>
							</c:forEach>
						</ul>
					</li>
				</ul>				
			</li>
    	</ul>	
	</c:forEach>					
		
		
        <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My account <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
        <li><a href="#">My cart (0) items</a></li>
      </ul>
     
	</div><!-- /.nav-collapse -->
  </nav>
</div>
	
	
<div class="container">

   <section >
        <div>
           <!--  <button class="button button-1 button-1a">CATEGORY</button> -->
            <a href="category" class="button button-1 button-1a">CATEGORY</a>
            <a href="subcategory" class="button button-1 button-1b">SUBCATEGORY</a>
            <a href="supplier" class="button button-1 button-1c">SUPPLIER</a>
            
        </div>
        <div>
              <a href="brand" class="button button-1 button-1d">BRAND</a>
                <a href="product" class="button button-1 button-1e">PRODUCT</a>
                  <a href="demo" class="button button-1 button-1f">DEMO</a>

        </div>
 </section>
    </div>
    
    
    	
		 
		
		<!-- Slider -->
		
		 <div class="csslider1 autoplay ">
		<input name="cs_anchor1" id="cs_slide1_0" type="radio" class="cs_anchor slide">
		<input name="cs_anchor1" id="cs_slide1_1" type="radio" class="cs_anchor slide">
		<input name="cs_anchor1" id="cs_slide1_2" type="radio" class="cs_anchor slide">
		
		<ul>
			<li class="cs_skeleton"><img src="resources/CssImages/imgslider1.png" style="width: 100%;"></li>
			<li class="num0 img slide"> <img src="resources/CssImages/imgslider1.png" alt="img-slider-1" title="img-slider-1"></li>
			<li class="num1 img slide"> <img src="resources/CssImages/imgslider2.png" alt="img-slider-2" title="img-slider-2"></li>
			<li class="num2 img slide"> <img src="resources/CssImages/imgslider3.png" alt="img-slider-3" title="img-slider-3"></li>
		</ul>
		
		<div class="cs_arrowprev">
			<label class="num0" for="cs_slide1_0"><span><i></i><b></b></span></label>
			<label class="num1" for="cs_slide1_1"><span><i></i><b></b></span></label>
			<label class="num2" for="cs_slide1_2"><span><i></i><b></b></span></label>
		</div>
		<div class="cs_arrownext">
			<label class="num0" for="cs_slide1_0"><span><i></i><b></b></span></label>
			<label class="num1" for="cs_slide1_1"><span><i></i><b></b></span></label>
			<label class="num2" for="cs_slide1_2"><span><i></i><b></b></span></label>
		</div>
		<div class="cs_bullets">
			<label class="num0" for="cs_slide1_0"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="resources/CssImages/imgslider1.png" alt="img-slider-1" ></span></label>
			<label class="num1" for="cs_slide1_1"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="resources/CssImages/imgslider2.png" alt="img-slider-2" ></span></label>
			<label class="num2" for="cs_slide1_2"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="resources/CssImages/imgslider3.png" alt="img-slider-3" ></span></label>
		</div>
		</div>
		<!-- Slider-->

    	
				
				<script src="resources/js/megamenu.js"></script>
				<script type="text/javascript" src="resources/js/ie.js"></script>

		<%@include file="Footer.jsp" %>