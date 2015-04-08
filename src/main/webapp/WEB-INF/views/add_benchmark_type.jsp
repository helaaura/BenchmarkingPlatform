<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="StarterApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/benchmarkCreator/resources/assets/bower_components/angular-material/angular-material.css">
<link rel="stylesheet" href="/benchmarkCreator/resources/assets/css/style.css">
<script src="/benchmarkCreator/resources/assets/bower_components/angular/angular.js"></script>
<script src="/benchmarkCreator/resources/assets/bower_components/angular-aria/angular-aria.js"></script>
<script src="/benchmarkCreator/resources/assets/bower_components/angular-animate/angular-animate.js"></script>
<script src="/benchmarkCreator/resources/assets/bower_components/angular-material/angular-material.js"></script>
<script src="/benchmarkCreator/resources/assets/bower_components/angular-smart-table/dist/smart-table.js"></script>
<script src="/benchmarkCreator/resources/assets/js/controllers/app.js"></script>

<title>BenchmarkType</title>
</head>
<body layout="column" ng-controller="AppCtrl">
	<md-toolbar layout="row">
      <h1>Benchmark Type > Add</h1>
    </md-toolbar>
    <div layout="row" flex >
        <md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2" md-component-id="left" md-is-locked-open="$media('gt-sm')">
        	menu
        </md-sidenav>
        <div layout="column" flex id="content">
            <md-content layout="column" flex class="md-padding"> 

				<h3>Define Benchmark Type</h3>



            </md-content>
        </div>
    </div>


</body>
</html>