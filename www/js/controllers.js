//Controllers

MyFol.controller('LoginCtrl', ['$scope', '$http', '$rootScope', '$httpParamSerializer', function($scope, $http, $rootScope, $httpParamSerializer){
  
  //$scope.user = {
    //username: '',
    //password: ''
  //};

//var request = 
//$http.post($rootScope.basePath+'/User/login', $httpParamSerializer({user: user}), {headers: { 'Content-Type': 'application/x-www-form-urlencoded' }});

}]);

MyFol.controller('GreetingCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('NewStudentCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('NewTutorialsCtrl', ['$scope', '$http', function($scope, $http){
  //tutorial will parse out json from my codeigniter folder
}]);

MyFol.controller('ReturningStudentCtrl', ['$scope', '$http', function($scope, $http){

}]);

//MyFol.controller('CoursesCtrl', ['$scope', 'contentData', function($scope, contentData){
	//$http.get('/json/courses.json').success(function(data){
 // var request =
	//$http.get(basePath.url+'/user/courses').success(function(data){
	//contentData.getCourses().success(function(data){
	//$scope.courses = data;

		//console.log($scope.courses);

	//});

//}]);

MyFol.controller('CoursesCtrl', ['$scope', '$http', function($scope, $http){
	$http.get('/json/courses.json').success(function(data){
	$scope.courses = data;

		console.log($scope.courses);

	});

}]);

MyFol.controller('CoursesHomeCtrl', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
  //hides the course dropdown
  $scope.IsVisible = false;

	$scope.ShowHide = function () {
   //if visible it will hide 
	$scope.IsVisible = $scope.IsVisible ? false : true;
	}

	$scope.LinksVisible = false;

	$scope.ShowHide2 = function () {
		$scope.LinksVisible = $scope.LinksVisible ? false : true;
	}

  	$http.get('/json/courses.json').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);

	});
}]);

MyFol.controller('ClasslistCtrl', ['$scope', '$http', function($scope, $http){
 
}]);

MyFol.controller('CalendarCtrl', ['$scope', '$http', function($scope, $http){
    $scope.CalendarCourse = false;

	$scope.ShowHide3 = function () {
   //if visible it will hide 
	$scope.CalendarCourse = $scope.CalendarCourse ? false : true;
	}


    $http.get('/json/courses.json').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);

	});

    //Calendar scope
	$scope.day = moment();
}]);

MyFol.controller('SettingsCtrl', ['$scope', '$http', function($scope, $http){
  
}]);