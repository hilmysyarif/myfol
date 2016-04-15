//tutorial from last night
$scope.users = [];

$http({
	url: base_url + 'User/login',
	method: "POST",
	header('Content-Type: application/json')
}).success(function(data){
	$scope.users = data;
});