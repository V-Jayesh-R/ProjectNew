<%@include file="Header.jsp" %>

            
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add SubCategory</h2>
							</div>
						</div>
					</div>
  					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							<form:form modelAttribute="subcategory" action="addsubcategory" id="login-form" role="form" style="display: block;">
        						<div class="form-group">
       								<form:input path="subCategoryName"  placeholder="SubCategory Name" tabindex="1" class="form-control"/>
         							<form:errors path="subCategoryName"/>	
         						</div>
    							<br>
                  					<div class="form-group">
         								<form:input path="subCategoryDescription"  placeholder="SubCategory Description" tabindex="1" class="form-control"/>
        								<form:errors path="subCategoryDescription"/>
        							</div>
    							<br>
    								<label>Category Name</label>
									<form:select path="categoryId" items="${categorylist}"
										itemValue="categoryId" 
										itemLabel="categoryName" class="form-control"></form:select>
      							<br>
      									<div class="form-group">
										<form:input path="subCategoryId" class="form-control" id="edit" type="hidden"/>
									</div>
      									
    										<div class="form-group">
												<div class="row">
													<div class="col-sm-6 col-sm-offset-3">
                    								<input type="submit" value="addsubcategory" tabindex="4" class="form-control btn btn-login"/>
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
		
    	<caption><h2>SubCategory List</h2></caption>
        <thead class="thead-default">
        <th>SubCategory Id</th>  
        <th>SubCategory Name</th>  
        <th>SubCategory description</th> 
        <th>Category</th>
        <th>Edit</th>
		<th>Delete</th> 
        </thead>
        
        <tbody>
        	<%-- <c:forEach items="${subcategorylist}" var="s">
        	<tr>
            <td scope="row">${s.subCategoryId}</td>
			<td>${s.subCategoryName}</td>
			<td>${s.subCategoryDescription}</td>
			<td>${s.category.categoryName}</td>
			<td><a href="updateSubCategory-${s.subCategoryId}" class="btn btn-warning">Edit</a></td>
			<td><a href="removeSubCategory-${s.subCategoryId}" class="btn btn-danger">Delete</a></td>
        	</tr>
        	</c:forEach> --%>
        	
        	<tr ng-repeat="s in myscope | filter:search">
					<td scope="row"> {{s.subCategoryId}}</td>
					<td>{{s.subCategoryName}}</td>
					<td>{{s.subCategoryDescription}}</td>
					<td>{{s.category.categoryName}}</td>
					<td><a href="updateSubCategory-{{s.subCategoryId}}" class="btn btn-warning">Edit</a></td>
					<td><a href="removeSubCategory-{{s.subCategoryId}}" class="btn btn-danger">Delete</a></td>
					
				</tr>  
		</tbody>
    	
	</table>
</div>

	
	<script src="resources/js/angular.min.js"></script>
	<script>
	var a=angular.module('myApp',[]);
	a.controller('myController',function($scope){
		$scope.myscope=${subcategorylistjson}	
	});
	</script>
        
<%@include file="Footer.jsp" %>