<%@include file="Header.jsp" %>
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/CartList.css" rel="stylesheet">

<div class="container">
	<table id="cart" class="table table-hover table-condensed" ng-controller="myController">
    				 <thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					 </thead>
					<tbody>
						<tr  ng-repeat="ci in myscope">
							<td data-th="Product">
								<div class="row" >
									<div class="col-sm-2 hidden-xs"><img src="resources/ProductImages/{{ci.productId}}.jpg" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">{{ci.productName}}</h4>
										<p>{{ci.productDescription}}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">{{ci.productActualPrice}}</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="1">
							</td>
							<td data-th="Subtotal" class="text-center">{{ci.productActualPrice}}</td>
							<td class="actions" data-th="">
								<button class="btn btn-info btn-sm" type="reset"><i class="fa fa-refresh"></i></button>
								<button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs"  ng-repeat="ci in myscope">
							<td class="text-center"><strong>{{ci.productActualPrice}}</strong></td>
						</tr>
						<tr ng-repeat="ci in myscope">
							<td colspan="5" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>{{ci.productActualPrice}}</strong></td>
						</tr>
						
				
				
					</tfoot>
				</table>
				<a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a>
				<a href="#" class="btn btn-success">Checkout <i class="fa fa-angle-right"></i></a>	
				
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${cartlistbyjson}
});
</script>

<%@include file="Footer.jsp" %>
