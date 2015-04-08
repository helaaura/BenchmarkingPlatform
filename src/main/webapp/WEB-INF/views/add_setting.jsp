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
	<script src="/benchmarkCreator/resources/assets/bower_components/angular-smart-table/dist/smart-table.js"></script>
<title>Add Setting</title>
</head>
<body layout="column">
	<md-toolbar layout="row">
	<button ng-click="toggleSidenav('left')" hide-gt-sm class="menuBtn">
		<span class="visually-hidden">Menu</span>
	</button>
	<h1>Settings > Component Element > add</h1>
	</md-toolbar>
	<div layout="row" flex>
		<md-sidenav layout="column" class="md-sidenav-left md-whiteframe-z2"
			md-component-id="left" md-is-locked-open="$media('gt-sm')">
		Menu </md-sidenav>
		<div layout="column" flex id="content">
			<md-content layout="column" flex class="md-padding"> <md-content
				class="md-padding">
			<form name="settingForm" ng-controller="SettingFormController as settingFormCtrl"
				action="">
				<h2>Component Element</h2>
				<h3>Specification</h3>
				<div layout layout-sm="column">
					<md-input-container flex> <label>Name</label>
					<input ng-model="settingFormCtrl.componentElement.name"> </md-input-container>
				</div>
				<div layout layout-sm="column">
					<md-input-container flex> <label>Description</label>
					<input ng-model="settingFormCtrl.componentElement.description"> </md-input-container>
				</div>
				<div layout="column" layout-align="right center"
					style="min-height: 100px;">
					<md-select placeholder="Pick" ng-model="settingFormCtrl.componentElement.dataType"> <md-option
						value="String">Expression</md-option> <md-option value="Byte[]">Multimedia</md-option>
					</md-select>
				</div>
				<h3>Settings</h3>
 
				<md-whiteframe class="md-whiteframe-z1" layout layout-align="center right" ng-controller="SettingsController as settingCtrl">
					<div layout="column" layout-fill>
						<md-content class="md-padding">					
						<form name="SettingForm" ng-submit="settingCtrl.addSetting(settingFormCtrl.componentElement)">
							<div layout layout-sm="column">
								<md-input-container flex> <label>Name</label>
								<input ng-model="settingCtrl.setting.name"> </md-input-container>
							</div>
							<div layout layout-sm="column">
								<md-input-container flex> <label>Description</label>
								<input ng-model="settingCtrl.setting.description"> </md-input-container>
							</div>
							
							<md-input-container flex class="radioButtondemoBasicUsage">
								Please choose the inputing's type <md-radio-group
									ng-model="settingFormCtrl.componentElement.inputingType"> <md-radio-button
									value="editable"> Editable </md-radio-button> <md-radio-button
									value="choiceList"> Choice List </md-radio-button> </md-radio-group> </md-input-container>
							
							<div ng-show="settingFormCtrl.componentElement.inputingType == 'editable'">
								<md-input-container flex class="radioButtondemoBasicUsage">
									Please choose the type of editable data 
									<md-radio-group ng-model="settingFormCtrl.componentElement.dataType"> 
										<md-radio-button value="String"> String </md-radio-button> 
										<md-radio-button value="Long"> Integer </md-radio-button> 
										<md-radio-button value="Double"> Float </md-radio-button> 
									</md-radio-group>
								</md-input-container>	
								<br>
								<md-content class="md-padding">
									<div layout layout-fill class="sliderdemoBasicUsage">
								    	<div flex="10" layout layout-align="center right">
								        	<span>Number of input</span>
								      	</div>
								      	<md-slider flex class="md-primary" md-discrete ng-model="settingFormCtrl.componentElement.numberInputs" step="1" min="1" max="5" aria-label="rating">
								      	</md-slider>
								    </div>
								</md-content>
							</div>
							<div ng-show="settingFormCtrl.componentElement.inputingType == 'choiceList'" ng-controller="ChoiceListController as choiceCtrl">
								<div layout layout-sm="column">
							        <md-input-container flex>
							          <label>choice</label>
							          <input ng-model="choiceCtrl.choice">
							        </md-input-container>
									{{choiceCtrl.choice}}
									<md-content>
										<section layout="row" layout-sm="column" layout-align="center center">
									        <md-button class="md-fab md-primary" aria-label="Use Android" type="submit" ng-click="choiceCtrl.addChoice(settingCtrl.setting)">
									          <md-icon md-svg-src="/benchmarkCreator/resources/assets/img/icons/addWhiteIcon.svg"></md-icon>
									        </md-button>
									     </section>
									 </md-content>
								</div>
								
								<md-list> 
									<md-item  class="md-3-line" ng-repeat="choice in choiceCtrl.getChoice(settingCtrl.setting)"> 
										<md-content class="md-padding">					
											<div class="md-item-text">
												<h5>{{choice}}</h5>
											</div>
										</md-content>
									</md-item>
								</md-list>
							</div>
							
							<div class="buttondemoBasicUsage">
							  <md-content>
							    <section layout="row" layout-sm="column" layout-align="center center">
							      <md-button class="md-raised md-primary" type="submit" >Add Setting</md-button>
							    </section>
							  </md-content>
							</div>
							
							
						<!-- </form>-->
						</md-content>
					</div>
				</md-whiteframe><br>


					<md-list> 
						<md-item  class="md-3-line" ng-repeat="setting in componentElement.settings"> 
							<md-whiteframe class="md-whiteframe-z2" layout layout-align="center right">
								<md-content class="md-padding">					
									<div class="md-item-text">
										<h4>{{ setting.name }}</h4>
										<dir><h5>{{ setting.description }}</h5>
										
										<h5 ng-show="setting.inputingType == 'choiceList'">
											Choice List
											<ul ng-repeat="choice in setting.choiceList">
												<li>{{choice}}</li>
											</ul>	
										</h5>
										
										<div ng-show="setting.inputingType == 'editable'">
											<h5> Type of the editable input : {{setting.dataType}}</h5>
										</div></dir>
									</div>
								</md-content>
 							</md-whiteframe><br>
						</md-content>
					</md-item>
				</md-list>

				<div class="buttondemoBasicUsage">
				  <md-content>
				    <section layout="row" layout-sm="column" layout-align="center center">
				      <md-button class="md-raised md-primary" type="submit">Add Component Element</md-button>
				    </section>
				  </md-content>
				</div>



			</form>	
</md-content>


  						
						<!-- <md-input-container flex class="radioButtondemoBasicUsage">
						<!-- <p>Selected Value: <span class="radioValue">{{ setting.inputingType }}</span> </p>--
						Please choose the inputing's type <md-radio-group
							ng-model="componentElement.inputingType"> <md-radio-button
							value="editable"> Editable </md-radio-button> <md-radio-button
							value="choiceList"> Choice List </md-radio-button> </md-radio-group> </md-input-container>-->

					<!-- <div  ng-repeat="setting in componentElement.settings">
						<h3>{{ setting.name }}</h3>
						<h4>{{ setting.description }}</h4>
						<p>{{ setting.inputingType }}</p>
						<div ng-show="setting.inputingType == 'choiceList'">
							Choice List
							<ul ng-repeat="choice in setting.choiceList">
								<li>{{choice}}</li>
							</ul>	
						</div>
						-->						
					</div>
				</div>
			
			</md-content> </md-content>
		</div>
	</div>
	<div></div>
	<div></div>
</body>
</html>