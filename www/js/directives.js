//Directives

MyFol.directive("calendar", function(){
	//setting starting value for the selected day based if the day is set or
	//is not based on the controller's day set if it is not then we are using todays date
	return {
		restrict: "E",
		templateUrl: "partials/return/calendar.html",
		scope: {
			selected: "="
		},
		link: function(scope){
			//using the moment to set the time to midnight and generate a current start time
			scope.selected = _removeTime(scope.selected || moment());
			scope.month = scope.selected.clone();

			var start = scope.selected.clone();
			start.date(1);
			_removeTime(start.day(0));

			_buildMonth(scope, start, scope.month);

			scope.select = function(day){
				scope.selected = day.date;
			};

			// previous and next  methods are for increamenting and deincrementing the month
			// and rebuilding the current month
			scope.next = function() {
				var next = scope.month.clone();
				_removeTime(next.month(next.month()+1).date(1).day(0));
				scope.month.month(scope.month.month()+1);
				_buildMonth(scope, next, scope.month);
			};

			scope.previous = function(){
				var previous = scope.month.clone();
				_removeTime(previous.month(previous.month()-1).date(1).day(0));
				scope.month.month(scope.month.month()-1);
				_buildMonth(scope, previous, scope.month);
			};
		}
	};

	function _removeTime(date) {
		return date.day(0).hour(0).minute(0).second(0).millisecond(0);
	}

	//bulding the month function which is not the same as days
	function _buildMonth(scope, start, month){
		scope.weeks = [];
		var done = false, date = start.clone(), monthIndex = date.month(), count = 0;

		while (!done){
			scope.weeks.push({days: _buildWeek(date.clone(), month)});
			date.add(1, "w");
			done = count++ > 2 && monthIndex !== date.month();
			monthIndex = date.month();
		}
	}

	function _buildWeek(date, month){
		//days obkect contains utility properties which indicate various things
		//(i.e. current day comes before the selected month or if the day is today)
		var days = [];

		//add  some methods for the user to select/ change the month and select a day
		for(var i = 0; i < 7; i++){
			days.push({
				name: date.format("dd").substring(0, 1),
				number: date.date(),
				isCurrentMonth: date.month() === month.month(),
				isToday: date.isSame(new Date(), "day"),
				date: date
			});

			date = date.clone();
			date.add(1, "d");
		}

		return days;
	}
	
});