// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
var MyFol = angular.module('MyFol', ['ionic', 'ui.router'])

.run(function($ionicPlatform) {

  //$rootScope.goHome = function(){
    //$location.path('/list');
  //}

  $ionicPlatform.ready(function() {
    if(window.cordova && window.cordova.plugins.Keyboard) {
      // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
      // for form inputs)
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);

      // Don't remove this line unless you know what you are doing. It stops the viewport
      // from snapping when text inputs are focused. Ionic handles this internally for
      // a much nicer keyboard experience.
      cordova.plugins.Keyboard.disableScroll(true);
    }
    if(window.StatusBar) {
      StatusBar.styleDefault();

    }
  });
})

MyFol.config(['$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('login', {
      url: '/login',
      templateUrl: 'partials/login/login.html',
      controller: 'LoginCtrl'
    })
    .state('greeting', {
      url: '/greeting',
      templateUrl: 'partials/login/greeting/greeting.html',
      controller: 'GreetingCtrl'
    })
    .state('newstudent', {
      url: '/newstudent',
      templateUrl: 'partials/new/newstudent.html',
      controller: 'NewStudentCtrl'
    })
    .state('tutorials', {
      url: '/tutorials',
      templateUrl: 'partials/return/tutorials.html',
      controller: 'NewTutorialCtrl'
    })
    .state('returningstudent', {
      url: '/returningstudent',
      templateUrl: 'partials/return/returningstudent.html',
      controller: 'ReturningStudentCtrl'
    })
    .state('courses', {
      url: '/courses',
      templateUrl: 'partials/return/courses.html',
      controller: 'CoursesCtrl'
    })
    .state('courseshome', {
      url: '/courseshome',
      templateUrl: 'partials/courses/courseshome.html',
      controller: 'CoursesHomeCtrl'
    })
    .state('classlist', {
      url: '/classlist',
      templateUrl: 'partials/courses/classlist.html',
      controller: 'ClasslistCtrl'
    })
    .state('calendar', {
      url: '/calendar',
      templateUrl: 'partials/return/calendar.html',
      controller: 'CalendarCtrl'
    })
    .state('settings', {
      url: '/settings',
      templateUrl: 'partials/return/settings.html',
      controller: 'SettingsCtrl'
    });
    $urlRouterProvider.otherwise('/login');
}]);

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
  
}]);

MyFol.controller('CoursesCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('CoursesHomeCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('ClasslistCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('CalendarCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

MyFol.controller('SettingsCtrl', ['$scope', '$http', function($scope, $http){
  
}]);

