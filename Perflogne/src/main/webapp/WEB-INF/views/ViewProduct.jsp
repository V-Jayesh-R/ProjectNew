
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>


<div  ng-controller="myController">
<div class="container">
	<div class="row">
   <div class="col-xs-6 col-sm-6 item-photo">
                    <img style="max-width:100%;" src="resources/ProductImages/{{myscope.productId}}.jpg" alt="product image"/>
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Seller data and product title -->
                    <h3>{{myscope.productName}}</h3>    
                    <h5 style="color:#337ab7">sold by <a href="#">{{myscope.supplier.supplierName}}</a> � <small style="color:#337ab7">(5054 Sales)</small></h5>

                    <!-- Prices -->
                    <h6 class="title-price"><small>PRODUCT PRICE</small></h6>
                    <h3 style="margin-top:0px;">{{myscope.productActualPrice}}</h3>
 
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>QUANTITY</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                

                    <!-- Shopping Buttons -->
                    <div class="section" style="padding-bottom:20px;">
                        <button class="btn btn-success"><a href="addtocart-{{myscope.productId}}"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add to Cart</button>
                        <h6><a href=""><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Add to Wishlist </a></h6>
                    </div>                                        
                </div>                              
	</div>
</div>

</div>





<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productData}
});
</script>

<%@include file="Footer.jsp" %>