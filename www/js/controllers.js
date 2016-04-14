//Controllers

MyFol.controller('LoginCtrl', ['$scope', '$http', function($scope, $http){

}]);

MyFol.controller('GreetingCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('NewStudentCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('NewTutorialsCtrl', ['$scope', '$http', function($scope, $http){
  //tutorial will parse out json from my codeigniter folder
}]);

MyFol.controller('ReturningStudentCtrl', ['$scope', '$http', function($scope, $http){
	console.log("controller called");

}]);

MyFol.controller('CoursesCtrl', ['$scope', '$http', function($scope, $http){
	//console.log("course controller loaded");
	$http.get('../index.php/user/courses').success(function(data){
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

	$http.get('../index.php/user/courses').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);
	});

}]);

MyFol.controller('ClasslistCtrl', ['$scope', '$http', function($scope, $http){
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

  	$http.get('../index.php/user/users').success(function(data){
 		$scope.user = data;

		console.log($scope.user);

	});

  	//suppose to scope out the alphabet for sorting everyone in the classlist
  	
	$scope.firstLetter = function(user_last) {
      return user_last && user_last.charAt(0);
    }

	$http.get('../index.php/user/courses').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);

	});
}]);

MyFol.controller('CalendarCtrl', ['$scope', '$http', function($scope, $http){
    $scope.CalendarCourse = false;

	$scope.ShowHide3 = function () {
   //if visible it will hide 
	$scope.CalendarCourse = $scope.CalendarCourse ? false : true;
	}


    $http.get('../index.php/user/courses').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);

	});

    //Calendar scope
	$scope.day = moment();
}]);

MyFol.controller('SettingsCtrl', ['$scope', '$http', function($scope, $http){
  
}]);