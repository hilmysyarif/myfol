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

  	$scope.hiddenDiv = false;

  	$scope.showDiv = function () {
  		$scope.hiddenDiv = !$scope.hiddenDiv;
  	};

	//$scope.ClaslistVisible = false;

	//$scope.ShowHide4 = function () {
		//$scope.ClaslistVisible = $scope.ClaslistVisible ? false : true;
	//}

  	//suppose to scope out the alphabet for sorting everyone in the classlist
  	
	$scope.firstLetter = function(user_last) {
      return user_last && user_last.charAt(0);
    }

	$http.get('../index.php/user/courses').success(function(data){
 		$scope.courses = data;

		console.log($scope.courses);

	});
}]);

MyFol.controller('CalendarCtrl', ['$scope', '$filter', '$http', '$q', function($scope, $filter, $http, $q){
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
	//$scope.day = moment();
	
	$scope.dayFormat = "d";

  // To select a single date, make sure the ngModel is not an array.
  $scope.selectedDate = null;

  // If you want multi-date select, initialize it as an array.
  $scope.selectedDate = [];

  $scope.firstDayOfWeek = 0; // First day of the week, 0 for Sunday, 1 for Monday, etc.
  $scope.setDirection = function(direction) {
    $scope.direction = direction;
    $scope.dayFormat = direction === "vertical" ? "EEEE, MMMM d" : "d";
  };

  $scope.dayClick = function(date) {
    $scope.msg = "You clicked " + $filter("date")(date, "MMM d, y h:mm:ss a Z");
  };

  $scope.prevMonth = function(data) {
    $scope.msg = "You clicked (prev) month " + data.month + ", " + data.year;
  };

  $scope.nextMonth = function(data) {
    $scope.msg = "You clicked (next) month " + data.month + ", " + data.year;
  };

  $scope.tooltips = true;
  $scope.setDayContent = function(date) {

  // You would inject any HTML you wanted for
  // that particular date here.
        return "<p>jkjhgty</p>";

        // You could also use an $http function directly.
       // return $http.get("/some/external/api");
      // return $http.get('../index.php/user/allCalendar');

        // You could also use a promise.
       // var deferred = $q.defer();
        //$timeout(function() {
          //  deferred.resolve("<p>jhg</p>");
        //}, 1000);
        // return deferred.promise;

    };
	
}]);

MyFol.controller('SettingsCtrl', ['$scope', '$http', function($scope, $http){
  
}]);