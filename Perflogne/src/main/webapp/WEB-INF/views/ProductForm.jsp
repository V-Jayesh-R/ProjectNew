<%@include file="Header.jsp" %>
                    
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div>
								<center><h2>Add Product</h2></center>
							</div>
						</div>
						<hr>
					</div>
  					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							<form:form modelAttribute="product" action="addproduct" enctype="multipart/form-data" id="login-form" role="form" style="display: block;">
        						<div class="form-group">
       								<form:input path="productName"  placeholder="Product Name" tabindex="1" class="form-control"/>
         							<form:errors path="productName"/>
         						</div>
    							<br>
                  					<div class="form-group">
         								<form:input path="productDescription"  placeholder="Product Description" tabindex="1" class="form-control"/>
        								<form:errors path="productDescription"/>
        							</div>
    							<br>
    								 <br>
                  					<div class="form-group">
         								<form:input path="productActualPrice" value="100" placeholder="Product Price" tabindex="1" class="form-control"/>
        								
        							</div>
    							    <br>
    							    <br>
                  					<div class="form-group">
         								<form:input path="productDiscount"  placeholder="Product Discount" tabindex="1" class="form-control"/>
        								
        							</div>
    								<br> 
    								<br>
                  					<div class="form-group">
         								<form:input path="productMadeCountry"  placeholder="Product ManuFactured" tabindex="1" class="form-control"/>
        								<form:errors path="productMadeCountry"/>
        							</div> 
        							<br>
                  					<div class="form-group">
         								<form:input path="productQuantity"  placeholder="Product Quantity" tabindex="1" class="form-control"/>
        							
        							</div>
        							<div class="form-group">                         
    								<label class="custom-file">
    								<form:input path="productImage" type="file" name="file" class="custom-file-input" ></form:input>
    								<span class="custom-file-control"></span>
   									</label>
   									<form:errors path="productImage"/>
									</div><br>
        							 <br>
        								<form:select path="categoryId" items="${categorylist}" itemValue="categoryId" itemLabel="categoryName" class="form-control"  ></form:select>
    								<br>
    									<form:select path="subCategoryId" items="${subcategorylist}" itemValue="subCategoryId" itemLabel="subCategoryName" class="form-control" ></form:select>
    								<br>
       									<form:select path="supplierId" items="${supplierlist}" itemValue="supplierId" itemLabel="supplierName" class="form-control"></form:select>
      								<br> 
      									<form:select path="brandId" items="${brandlist}" itemValue="brandId" itemLabel="brandName" class="form-control"></form:select>
      								<br> 
      								
      								 <div class="form-group">
										<form:input path="productId" class="form-control" id="edit" type="hidden"/>
									</div> 
      								
    										<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
                    								<input type="submit" value="addproduct" tabindex="4" class="form-control btn btn-login"/>
      												</div>
      											</div>
    										</div>
         					</form:form>
        				</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="table-responsive">
	<table  class="table" ng-controller="myController">  
		
    	<caption>Product List</caption>
    	
				<div class="col-xs-12 col-md-4 col-sm-4">
					<input class="form-control" type="text" ng-model="search" placeholder="search"/>
				</div>
			
        <tr>
        	<th>PRODUCT IMAGE</th>
        	<th>PRODUCT ID</th>
        	<th>PRODUCT NAME</th>            
        	<th>PRODUCT DESCRIPTION</th>
           	<th>PRODUCT PRICE</th>
			<th>Discount</th>
			<th> Made In Country</th>
			<th>Quantity</th>
			<th>Category</th>
			<th>SubCategory</th>
			<th>Brand</th>
			<th>Supplier</th>
           	<th>Edit</th>
			<th>Delete</th>   
			<th>View</th>
        </tr>
        
        
        	<%-- <c:forEach items="${productlist}" var="pl">
        	<tr>
				 <td scope="row">
				 
	<img src="resources/images/${pl.productId}.jpeg" height="80px" width="80px" alt="img not uploaded"/></td>
            			<td>${pl.productId}</td>
            	<td>${pl.productName}</td>
                <td>${pl.productDescription}</td>
              	<td>${pl.productActualPrice}</td>
				<td>${pl.productDiscount}</td>
				<td>${pl.productMadeCountry}</td>
				<td>${pl.productStock}</td>
				<td>${pl.category.categoryName}</td>
				<td>${pl.subCategory.subCategoryName}</td>
				<td>${pl.brand.brandName}</td>
				<td>${pl.supplier.supplierName}</td>
               <td><a href="updateProduct-${pl.productId}" class="btn btn-warning">Edit</a></td>
			<td><a href="removeProduct-${pl.productId}" class="btn btn-danger">Delete</a></td>
        	</tr>
        	</c:forEach>   --%>
        	
        	<tr ng-repeat="pl in myscope | filter:search">
					<td scope="row"><img src="resources/ProductImages/{{pl.productId}}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
					<td>{{pl.productId}}</td>
					<td>{{pl.productName}}</td>
					<td>{{pl.productDescription}}</td>
					<td>{{pl.productActualPrice}}</td>
					<td>{{pl.productDiscount}}</td>
					<td>{{pl.productMadeCountry}}</td>
					<td>{{pl.productQuantity}}</td>
					<td>{{pl.category.categoryName}}</td>
					<td>{{pl.subCategory.subCategoryName}}</td>
					<td>{{pl.brand.brandName}}</td>
					<td>{{pl.supplier.supplierName}}</td>
					<td><a href="updateProduct-{{pl.productId}}" class="btn btn-warning">Edit</a></td>
					<td><a href="removeProduct-{{pl.productId}}" class="btn btn-danger">Delete</a></td>
					<td><a href="viewProduct-{{pl.productId}}" class="btn btn-danger">View</a></td>
				</tr>
		
    	
	</table>
</div>


	<script>
	var a=angular.module('myApp',[]);
	a.controller('myController',function($scope){
		$scope.myscope=${productlistjson}	
	});
	</script>
	

<%@include file="Footer.jsp" %>