autowatch = 1;

//Constructor
var Scheduler = function () {
	this.start = new Date().getTime();
	this.main = 0;

	// Interval between turning on main objects in milliseconds. 
	const TURN_ON_INTVL = 5000;

	// Number of Mains
	const NO_MAINS = 6;

	Object.defineProperty( Scheduler, "TURN_ON_INTVL", {
		get: function() {
			return TURN_ON_INTVL;
		},
	});
};

Scheduler.prototype.newStart = function() {
	this.start = new Date().getTime();
	this.main = 0;
};

Scheduler.prototype.getStart = function() {
	return this.start;
};

Scheduler.prototype.getMain = function() {
	return this.main;
};

Scheduler.prototype.run = function() {
	//A precondition that the number of mains should not be below.
	if (this.main < 0 || this.main > (Scheduler.NO_MAINS - 1) ) {
		return;
	}
	//If the number of mains is zero, then the system is starting. Thus turn on a sound immediately.
	else if (this.main == 0) {
		this.main++;
		return this.main - 1;
	}
	else if ((new Date().getTime() - this.start) >= Scheduler.TURN_ON_INTVL){
		this.main++;
		this.start = new Date().getTime() - this.start - Scheduler.TURN_ON_INTVL;
		return this.main;
	}
};

