<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@include file="Header.jsp" %>



	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align: center">
								<h2>Add Category</h2>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form:form method="POST" modelAttribute="category"
									action="addcategory" id="login-form" role="form"
									style="display: block;">
									
									<div class="form-group">
										<form:input path="categoryName" placeholder="Category Name"
											tabindex="1" class="form-control" />
										<form:errors path="categoryName"/>					
									</div>
									<br>
									<div class="form-group">
										<form:input path="categoryDescription"
											placeholder="Category Description" tabindex="2"
											class="form-control" />
											<form:errors path="categoryDescription"/>	
									</div>
									<br>
									<div class="form-group">
										<form:input path="categoryId" class="form-control" id="edit" type="hidden"/>
									</div>
									<br>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" value="addcategory" tabindex="4"
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
				<h2>Category List</h2>
			</caption>
			<div class="row">
				<div class="col-xs-12 col-md-4 col-sm-4">
					<input class="form-control" type="text" ng-model="search" placeholder="search"/>
				</div>
			</div>

			<tr>

				<th>Category Id</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

				<tr ng-repeat="clist in myscope | filter:search">
					<td scope="row">{{clist.categoryId}}</td>
					<td>{{clist.categoryName}}</td>
					<td>{{clist.categoryDescription}}</td>
					<td><a href="updateCategory-{{clist.categoryId}}" class="btn btn-warning">Edit</a></td>
					<td><a href="deleteCategory-{{clist.categoryId}}" class="btn btn-danger">Delete</a></td>
				</tr>
				
			
				
			</table>
	</div>
	
<script src="resources/js/angular.min.js"></script>
	<script>
	var a=angular.module('myApp',[]);
	a.controller('myController',function($scope){
		$scope.myscope=${categorylistjson}	
	});
	</script>
	
	
	
	
<%@include file="Footer.jsp" %>