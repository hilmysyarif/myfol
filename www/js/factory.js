MyFol.factory('contentData', ['$http', '$rootScope', 'basePath', function($http, $rootScope, basePath){
	
	var dataUrl  = basePath.url;

	var contentInfo = {};

	contentInfo.getCourses = function() {
		return $http.get(dataUrl+'user/courses');
	};

	contentInfo.getCourse = function() {
		return $http.get(dataUrl+'user/course');
	};


	return contentInfo;

}]);