<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="StarterApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="/benchmarkCreator/resources/assets/bower_components/angular-material/angular-material.css">
<link rel="stylesheet"
	href="/benchmarkCreator/resources/assets/css/style.css">
<!-- <link rel="stylesheet" type="text/css" href="/benchmarkCreator/resources/assets/css/angular-material.css">-->
<!-- <script src="/benchmarkCreator/resources/assets/js/angular-material.js"></script>-->
<script
	src="/benchmarkCreator/resources/assets/bower_components/angular/angular.js"
	type="text/javascript"></script>
<script
	src="/benchmarkCreator/resources/assets/bower_components/angular-aria/angular-aria.js"
	type="text/javascript"></script>
<script
	src="/benchmarkCreator/resources/assets/bower_components/angular-animate/angular-animate.js"
	type="text/javascript"></script>
<script
	src="/benchmarkCreator/resources/assets/bower_components/angular-material/angular-material.js"
	type="text/javascript"></script>
<script src="/benchmarkCreator/resources/assets/js/controllers/app.js"
	type="text/javascript"></script>
<script src="/benchmarkCreator/resources/assets/bower_components/angular-smart-table/dist/smart-table.js" type="text/javascript"></script>
<title>testTable</title>
</head>
<body ng-controller="safeCtrl">

	<div ng-controller="safeCtrl">

		<button type="button" ng-click="addRandomItem(row)" class="btn btn-sm btn-success">
			<i class="glyphicon glyphicon-plus">
			</i> Add random item
		</button>

		<table st-table="displayedCollection" st-safe-src="rowCollection" class="table table-striped">
			<thead>
			<tr>
				<th st-sort="firstName">first name</th>
				<th st-sort="lastName">last name</th>
				<th st-sort="birthDate">birth date</th>
				<th st-sort="balance">balance</th>
			</tr>
			<tr>
				<th colspan="5"><input st-search="" class="form-control" placeholder="global search ..." type="text"/></th>
			</tr>
			</thead>
			<tbody>
			<tr ng-repeat="row in displayedCollection">
				<td>{{row.firstName}}</td>
				<td>{{row.lastName}}</td>
				<td>{{row.birthDate}}</td>
				<td>{{row.balance}}</td>
				<td>
				<button type="button" ng-click="removeItem(row)" class="btn btn-sm btn-danger">
					<i class="glyphicon glyphicon-remove-circle">
					</i>
				</button>
				</td>
			</tr>
			</tbody>
		</table>

	</div>
</body>
</html>