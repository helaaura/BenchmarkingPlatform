var app = angular.module('StarterApp', ['ngMaterial','smart-table']);

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
  })
  
  .controller('LoginController',['$scope','$http', function($scope,$http) {
	    $scope.user = {
	    	      login: 'hela',
	    	      password: '123',
	    };   
		$scope.submit = function() {
			var user = {
					login : $scope.user.login,
					password : $scope.user.password
			};	
			userJSON=angular.toJson(user,true);
			var res = $http.post('/benchmarkCreator/login_json', userJSON);
			res.success(function(data, status, headers, config) {
				$scope.message = data;
			});
			res.error(function(data, status, headers, config) {
				alert( "failure message: " + JSON.stringify({data: data}));
			});		
		};
	  
  }])
  .controller('SettingFormController',['$scope','$http',function($scope,$http){
	  $scope.componentElement = component; 
	  $scope.choiceList = ['jps','png'];
	   
  }])
/*  .controller('SettingsController',['$scope','$http',function($scope,$http){
	  $scope.setting = {
			  name:'',
			  description : '',
			  inputingType  :'',
			  choiceList : [],
			  dataType : '',
			
	  };
	  $scope.addSetting = function(component) {
		  component.settings.push($scope.setting);
	  };;
	   
  }]);
app.controller('ChoiceListController',['$scope','$http',function($scope,$http){
	  $scope.list = [] ;
	  $scope.choice='';
	  $scope.addChoice = function(setting) {
		  setting.choiceList.push($scope.choice);
	  };
	  $scope.getList = function(setting) {
		  return setting.choiceList;
	  };
	   
}])*/

.controller('ListComponentTypeController',['$scope','$http', function($scope,$http){
	$scope.listType=dataTypes;
	$scope.value='';
	$scope.addValueToTypesContent = function(content){
		content.values.push($scope.value);
		$scope.value='';
	};
}]);

var dataTypes = [
               {
            	   name:'Concept',
            	   contents: [
	                         	{
	                         		name : 'Langage',
	                         		values: [
	                         	               'Arabic',
	                         	               'English',
	                         	               'Frensh',
	                         	               'German',
	                         	               'Spanish'
	                         	               ]
	                         	}
	                         ]
               },
               {
            	   name:'Text',
            	   contents: [
	                         	{
	                         		name : 'Langage',
	                         		values: [
	                         	               'Arabic',
	                         	               'English',
	                         	               'Frensh',
	                         	               'German',
	                         	               'Spanish'
	                         	               ]
	                         	},
								{
									name : 'Lenght',
									values : ''
								}
            	             ]
               },
               {
            	   name:'Image',
              	   contents: ''
               },
               {
            	   name:'Video',
              	   contents: ''
               },
               {
            	   name:'Audio',
              	   contents: ''
               }               
               ];
	
var component = 
   {
	  name : 'component1',
	  description : 'descriptioncomponent1',
	  dataType : 'String',
	  settings : [
		  {
			  name : 'setting1',
			  description : 'description1',
			  inputingType : 'choiceList',
			  choiceList : ['choice1','choice2'],
			  dataType : '',
			  numberInputs : 0 ,
			  relationBetweenInputs : []
		  },
		  {
			  name : 'setting2',
			  description : 'description2',
			  inputingType : 'editable',
			  choiceList : '',
			  dataType : 'String',
			  numberInputs : 2 ,
			  relationBetweenInputs : ["Equal"]
		  }
	  ]
};
  
  app.directive('loginContent', function(){
	  return{
		  restrict: 'E',
		  templateUrl: 'loginContent'
	  };
  });

  
 /* app.controller('safeCtrl', ['$scope', function ($scope) {

	    var firstnames = ['Laurent', 'Blandine', 'Olivier', 'Max'];
	    var lastnames = ['Renard', 'Faivre', 'Frere', 'Eponge'];
	    var dates = ['1987-05-21', '1987-04-25', '1955-08-27', '1966-06-06'];
	    var id = 1;

	    function generateRandomItem(id) {

	        var firstname = firstnames[Math.floor(Math.random() * 3)];
	        var lastname = lastnames[Math.floor(Math.random() * 3)];
	        var birthdate = dates[Math.floor(Math.random() * 3)];
	        var balance = Math.floor(Math.random() * 2000);

	        return {
	            id: id,
	            firstName: firstname,
	            lastName: lastname,
	            birthDate: new Date(birthdate),
	            balance: balance
	        }
	    }

	    $scope.rowCollection = [];

	    for (id; id < 5; id++) {
	        $scope.rowCollection.push(generateRandomItem(id));
	    }

	    //copy the references (you could clone ie angular.copy but then have to go through a dirty checking for the matches)
	    $scope.displayedCollection = [].concat($scope.rowCollection);

	    //add to the real data holder
	    $scope.addRandomItem = function addRandomItem() {
	        $scope.rowCollection.push(generateRandomItem(id));
	        id++;
	    };

	    //remove to the real data holder
	    $scope.removeItem = function removeItem(row) {
	        var index = $scope.rowCollection.indexOf(row);
	        if (index !== -1) {
	            $scope.rowCollection.splice(index, 1);
	        }
	    }
	}]);
*/  
  
  