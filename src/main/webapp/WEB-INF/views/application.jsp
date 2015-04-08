<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  lang="en" ng-app="StarterApp">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="resources/assets/bower_components/angular-material/angular-material.css">
	<link rel="stylesheet" href="resources/assets/css/style.css">
	<script src="resources/assets/bower_components/angular/angular.js"></script>
    <script src="resources/assets/bower_components/angular-aria/angular-aria.js"></script>
    <script src="resources/assets/bower_components/angular-animate/angular-animate.js"></script>
    <script src="resources/assets/bower_components/angular-material/angular-material.js"></script>
    <script src="resources/assets/js/controllers/app.js"></script>

<title>Benchmark Creator</title>
</head>
<body>
	<body layout="column" ng-controller="AppCtrl">
	<!-- <md-toolbar layout="row">
      <button ng-click="toggleSidenav('left')" hide-gt-sm class="menuBtn">
        <span class="visually-hidden">Menu</span>
      </button>
      <h1>{{menu}}</h1>
    </md-toolbar>
  -->
    
    
    <md-toolbar class="toolbardemoBasicUsage">
      <div class="md-toolbar-tools">
        <md-button class="md-icon-button" aria-label="Settings">
          <md-icon md-svg-icon="resources/assets/img/icons/menu.png" ng-show="true"></md-icon>
        </md-button>
        <h2>
          <span>Toolbar with Icon Buttons</span>
        </h2>
        <span flex></span>
        <!-- <md-button class="md-icon-button" aria-label="Favorite">
          <md-icon md-svg-icon="img/icons/favorite.svg" style="color: greenyellow;"></md-icon>
        </md-button>-->
        <md-button class="md-icon-button" aria-label="More">
          <md-icon md-svg-icon="resources/assets/img/icons/more_vert.png"></md-icon>
        </md-button>
      </div>
    </md-toolbar>
    
    <md-content>  
    <div layout="row" flex >
        <md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2" md-component-id="left" md-is-locked-open="$media('gt-sm')">
        	
        	<Menu>menu</Menu>
        
        </md-sidenav>
        <div layout="column" flex id="content">
            <md-content layout="column" flex class="md-padding"> 
            
            <content>content</content>
            
            </md-content>
        </div>
    </div>    
	
</body>
</html>