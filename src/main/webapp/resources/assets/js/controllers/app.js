var app = angular.module('StarterApp', ['ngMaterial']);

app.controller('AppCtrl', ['$scope', '$mdSidenav', function($scope, $mdSidenav){
  $scope.toggleSidenav = function(menuId) {
    $mdSidenav(menuId).toggle();
  };
 
}])
.controller('SideNav', function($scope, $timeout, $mdSidenav, $log) {
  $scope.toggleLeft = function() {
    $mdSidenav('left').toggle()
                      .then(function(){
                          $log.debug("toggle left is done");
                      });
  };
  $scope.toggleRight = function() {
    $mdSidenav('right').toggle()
                        .then(function(){
                          $log.debug("toggle RIGHT is done");
                        });
  };
})
.controller('LeftCtrl', function($scope, $timeout, $mdSidenav, $log) {
  $scope.close = function() {
    $mdSidenav('left').close()
                      .then(function(){
                        $log.debug("close LEFT is done");
                      });
  };
})
.controller('RightCtrl', function($scope, $timeout, $mdSidenav, $log) {
  $scope.close = function() {
    $mdSidenav('right').close()
                        .then(function(){
                          $log.debug("close RIGHT is done");
                        });
  };
})

.controller('SignUpCtrl',['$scope','$http', function($scope,$http) {
    $scope.user = {
    	      email: 'email@email.com',
    	      firstName: 'hela',
    	      lastName: 'meg' ,
    	      login: 'hela',
    	      password: '123',
    	      confirm_password:'123',
    };   
    $scope.verifyPassword = function() {
    	alert( "password==confirm_password" + $scope.user.password.to_s == $scope.user.confirm_password.to_s);
    	return $scope.user.password.to_s == $scope.user.confirm_password.to_s; 
    };
	$scope.submit = function() {
		var rater = {
				firstName : $scope.user.firstName,
				lastName : $scope.user.lastName, 
				email : $scope.user.email,
				login : $scope.user.login,
				password : $scope.user.password
		};	
		raterJSON=angular.toJson(rater,true);
		var res = $http.post('/benchmarkCreator/saverater_json', raterJSON);
		res.success(function(data, status, headers, config) {
			$scope.message = data;
		});
		res.error(function(data, status, headers, config) {
			alert( "failure message: " + JSON.stringify({data: data}));
		});		
	};
 }])
  .config( function($mdThemingProvider){
    // Configure a dark theme with primary foreground yellow
    $mdThemingProvider.theme('docs-dark', 'default')
        .primaryPalette('yellow')
        .dark();
  });
	

