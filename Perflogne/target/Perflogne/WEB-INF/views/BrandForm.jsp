<%@include file="Header.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align: center">
								<h2>Add Brand</h2>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form:form method="POST" modelAttribute="brand"
									action="addbrand" id="login-form" role="form"
									style="display: block;">

									<div class="form-group">
										<form:input path="brandName" placeholder="Brand Name"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="brandDescription"
											placeholder="Brand Description" tabindex="2"
											class="form-control" />
									</div>
									
									<br>
									<div class="form-group">
										<form:input path="brandId" class="form-control" id="edit" type="hidden"/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" value="addbrand" tabindex="4"
													class="form-control btn btn-login" />
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
		<table class="table" ng-controller="myController">

			<caption>
				<h2>Brand List</h2>
			</caption>

			<thead class="thead-default">

				<th>Brand Id</th>
				<th>Brand Name</th>
				<th>Brand Description</th>
				<th>Edit</th>
				<th>Delete</th>

			</thead>

			<tbody>
				<%-- <c:forEach items="${brandlist}" var="bl">
					<tr>
					<td scope="row">${bl.brandId}</td>
					<td>${bl.brandName}</td>
					<td>${bl.brandDescription}</td>
					<td><a href="updateBrand-${bl.brandId}" class="btn btn-warning">Edit</a></td>
					<td><a href="deleteBrand-${bl.brandId}" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach> --%>
				<tr ng-repeat="bl in myscope | filter:search">
					<td scope="row">{{bl.brandId}}</td>
					<td>{{bl.brandName}}</td>
					<td>{{bl.brandDescription}}</td>
					<td><a href="updateBrand-{{bl.brandId}}" class="btn btn-warning">Edit</a></td>
					<td><a href="deleteBrand-{{bl.brandId}}" class="btn btn-danger">Delete</a></td>
				</tr>
			</tbody>
		</table>
	</div>


	<script src="resources/js/angular.min.js"></script>
	<script>
	var a=angular.module('myApp',[]);
	a.controller('myController',function($scope){
		$scope.myscope=${brandlistjson}	
	});
	</script>
	
	
	
	
<%@include file="Footer.jsp" %>