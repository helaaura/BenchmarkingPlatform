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
    <script src="/benchmarkCreator/resources/assets/js/controllers/app.js"></script>
<title>Insert title here</title>
</head>
<body layout="column" ng-controller="AppCtrl">
<md-toolbar layout="row">
      <button ng-click="toggleSidenav('left')" hide-gt-sm class="menuBtn">
        <span class="visually-hidden">Menu</span>
      </button>
      <h1>Sign up</h1>
    </md-toolbar>
    <div layout="row" flex >
        <md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2" md-component-id="left" md-is-locked-open="$media('gt-sm')"></md-sidenav>
        <div layout="column" flex id="content">
            <md-content layout="column" flex class="md-padding"> 
            <form name="signUpForm" ng-controller="SignUpCtrl" ng-submit="signUpForm.$valid  && submit()" novalidate>        
	            <div layout="column" layout-align="center">
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>First Name</label>
			          <input ng-model="user.firstName" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Last Name</label>
			          <input ng-model="user.lastName" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Login</label>
			          <input ng-model="user.login" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Email</label>
			          <input type="email" ng-model="user.email" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Password</label>
			          <input type="password" ng-model="user.password" required>
			        </md-input-container>
				  </div>
	              <div layout layout-sm="column">
			        <md-input-container flex>
			          <label>Confirm Password</label>
			          <input type="password" ng-model="user.confirm_password" required>
			        </md-input-container>
			      </div>
	            </div>
	            <div>
				
				<div class="buttondemoBasicUsage">
				  <md-content>
				    <section layout="row" layout-sm="column" layout-align="center center">
				      <md-button class="md-raised md-primary" type="submit">Sign Up</md-button>
				    </section>
				  </md-content>
				</div>
				{{signUpCtrl.user.email}}
	            </div>
            </form>
        </div>
        
                   <!-- <md-content layout="column" flex class="md-padding">-->         
                
    </div>    
</body>
</html>