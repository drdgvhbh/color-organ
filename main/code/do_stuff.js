include("scheduler.js");

outlets = 6;
autowatch = 1;

var scheduler = new Scheduler();

function bang() {
	var outlet = scheduler.run();
	if ( outlet != null ){
		this.outlet( outlet, 1 );
	}
}

function reset() {
	scheduler.newStart();
}
