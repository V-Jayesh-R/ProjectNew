<%@include file="Header.jsp" %>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align: center">
								<h2>Add Supplier</h2>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form:form method="POST" modelAttribute="supplier"
									action="addsupplier" id="login-form" role="form"
									style="display: block;">

									<div class="form-group">
										<form:input path="supplierName" placeholder="Supplier Name"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="supplierAddress"
											placeholder="Supplier Address" tabindex="2"
											class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="supplierContact"
											placeholder="Supplier Contact" tabindex="2"
											class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="supplierId" class="form-control" id="edit" type="hidden"/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" value="addsupplier" tabindex="4"
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
				<h2>Supplier List</h2>
			</caption>

			<thead class="thead-default">

				<th>Supplier Id</th>
				<th>Supplier Name</th>
				<th>Supplier Address</th>
				<th>Supplier Contact</th>
				<th>Edit</th>
				<th>Delete</th>

			</thead>

			<tbody>
				<%-- <c:forEach items="${supplierlist}" var="sl">
					<tr>
					<td scope="row">${sl.supplierId}</td>
					<td>${sl.supplierName}</td>
					<td>${sl.supplierAddress}</td>
					<td>${sl.supplierContact}</td>
					<td><a href="updateSupplier-${sl.supplierId}" class="btn btn-warning">Edit</a></td>
					<td><a href="removeSupplier-${sl.supplierId}" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach> --%>
				<tr ng-repeat="sl in myscope | filter:search">
					<td scope="row">{{sl.supplierId}}</td>
					<td>{{sl.supplierName}}</td>
					<td>{{sl.supplierAddress}}</td>
					<td>{{sl.supplierContact}}</td>
					<td><a href="updateSupplier-{{sl.supplierId}}" class="btn btn-warning">Edit</a></td>
					<td><a href="removeSupplier-{{sl.supplierId}}" class="btn btn-danger">Delete</a></td>
				</tr>
			</tbody>
		</table>
	</div>


	<script src="resources/js/angular.min.js"></script>
	<script>
	var a=angular.module('myApp',[]);
	a.controller('myController',function($scope){
		$scope.myscope=${supplierlistjson}	
	});
	</script>
	
	
	
	
<%@include file="Footer.jsp" %>
