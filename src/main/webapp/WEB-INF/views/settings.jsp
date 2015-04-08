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

<title>Settings</title>
</head>

<body layout="column" ng-controller="AppCtrl">

	<md-toolbar layout="row">
      <h1>Setting</h1>
    </md-toolbar>
    <div layout="row" flex >
        <md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2" md-component-id="left" md-is-locked-open="$media('gt-sm')">
        	menu
        </md-sidenav>
        <div layout="column" flex id="content">
            <md-content layout="column" flex class="md-padding"> 
            
				<div class="tabsdemoDynamicTabs">
					<md-content class ="md-padding" > <div class="title">Types of component elements</div></md-content>
					<div ng-controller="ListComponentTypeController" class="sample" layout="column">
						<md-tabs md-selected="selectedIndex" md-border-bottom>
						    <md-tab ng-repeat="type in listType"	           
						            label="{{type.name}}">
						            <md-divider ng-if="!$last"></md-divider>
						      <div class="demo-tab tab{{$index%4}}" style="padding: 25px; text-align: center;">
						        <!-- <md-content class ="md-padding">-->	
									
							    	<md-list> 
										<md-item  class="md-3-line" ng-repeat="content in type.contents"> 
											<div layout layout-sm="column">
												<md-content class="md-padding" >					
													<div class="md-item-text">
														<h5>{{content.name}} : </h5>
													</div>
												</md-content>
												
												<form   ng-submit="addValueToTypesContent(content)">
													 <div layout layout-sm="column">
												        <md-input-container flex class="long">
												          <label>add {{content.name}}</label>
												          <input ng-model="value">
												        </md-input-container>
									
														<md-content>
															 <section layout="row" layout-sm="column" layout-align="center center">
														        <md-button class="md-fab md-primary" type="submit" >
														          <center><md-icon md-svg-src="/benchmarkCreator/resources/assets/img/icons/addWhiteIcon.svg"></md-icon></center>
														        </md-button>
														     </section>
														 </md-content>
													</div>

												<md-content layout layout-sm="column">
													<md-list > 
														<md-item  class="md-3-line" ng-repeat="value in content.values"> 
															<div class="md-item-text">
	
																<h6>{{value}}</h6>
																
															</div>
														</md-item>
													</md-list>
												</md-content>

																										
												</form>
											</div>
											
											
											
										</md-item>
									</md-list>
							    	
							    	
						        </md-content>
						        
						        <div class="buttondemoBasicUsage">
							        <section layout="row" layout-sm="column" layout-align="center center">
								        <div layout layout-align="center center" flex>
									        <md-button class="md-primary md-raised" ng-click="saveType( type )" ng-disabled="" >Save changes</md-button>
								        </div>								        
								        <md-button  ng-click="removeType( type )" ng-disabled="tabs.length <= 1" >Remove Type</md-button>
							      	</section>
							  	</div>
						        
						        </div>
						    </md-tab>
						  </md-tabs>
					</div>		            
				</div>
            

            </md-content>
        </div>
    </div>
</body>
</html>