/* 
	Author: Ryan Lee
	Date: September 19, 2016

	Here we can customize the output of our program by setting a number of keyvalues.
*/
outlets = 8;

var settings = new Global( "settings" );
settings.kv = new Dict( "settings" );

var keyvalues = new Global( "keyvalues");
keyvalues.kv = new Dict( "keyvalues" );

var util = new Global( "utilities" ).util;

var dictSettings = this.patcher.getnamed( "settings_dict" );

/* 
	Executes when issued a bang message.
	Imports our settings from a json file. 
*/
function bang() 
{
	import_settings();

}

// Import our predefined settings
function import_settings()
{
	settings.kv.import_json( "settings.json" );

	// Show our settings on the GUI
	var dictSettings = this.patcher.getnamed( "settings_dict" );
	dictSettings.message( new Array( "bang" ) );

	// How many partial objects should there be?
	settings.partialQuantity = settings.kv.get( "settings::partialQuantity" ) || 1;
	declareattribute("partialQuantity", setPartialQuantity, getPartialQuantity, 0);	
	//this.getPartialQuantity();

	// What is the default fundamental frequency?
	settings.fundamental = settings.kv.get( "settings::fundamental" );

	// Which sequence should be used to create partials? Arithmetic or Geometric? 
	settings.sequence = settings.kv.get( "settings::sequence" );
	declareattribute("sequence", setSequence, getSequence, 0);
	this.getSequence();

	// Overtone or Partial?
	// @pre 1 or 0
	settings.overtone = settings.kv.get( "settings::overtone" );
	declareattribute("overtone", setOvertone, getOvertone, 0);
	this.getOvertone();

	/*	Arithmetic multiplier for the sequence
		A value of 1 will create a sequence of 100, 200, 300 , 400, ...
		A value of 2 will create a sequence of 100, 300, 500, 700, ...
		Minimum value of 1															
	*/ 
	settings.arithmetic = settings.kv.get( "settings::arithmetic" );
	declareattribute("arithmetic", setArithmetic, getArithmetic, 0);
	this.getArithmetic();

	/* 	Geometric multiplier for the sequence. The exponent of the Math.pow function
		A value of 1 will result in the exponent to be 1, 2, 3, ...
		A value of 2 will result in the exponent to be 1, 4, 6, 8, ...
	*/
	settings.geometric = settings.kv.get( "settings::geometric" );
	declareattribute("geometric", setGeometric, getGeometric, 0);
	this.getGeometric();

	/* If the output is a partial then what percentage of oscillation should the output have?
		E.x. a value of 0.02 will result in an osscillation of a given frequency to be set between 0.98% and 1.02%
		therefore given a frequency of 100. It will be changed so that it could lie between 98 to 102. 
		Should not exceed 0.49 because the the value could be lower than the fundamental	
	*/
	settings.partialMultiplier = settings.kv.get( "settings::partialMultiplier" );
	declareattribute("partialMultiplier", setPartialMultiplier, getPartialMultiplier, 0);
	this.getPartialMultiplier();

	/*
		How long should a note play? By default it plays over one second.
	*/
	settings.sustain = settings.kv.get( "settings::sustain" );
	declareattribute("sustain", setSustain, getSustain, 0);
	this.getSustain();



	// How should much should the amplitude decay over partials? Formula: Ffundamental * ( decay ) ^ partialNumber ?
	// lower value == faster decay
	// higher value == slower decay
	settings.expDecay = settings.kv.get( "settings::expDecay" );
	declareattribute("expDecay", setExpDecay, getExpDecay, 0);
	this.getExpDecay();
}

function get( setting, iOutlet )
{
	this.patcher.hiddenconnect( this.box, iOutlet, this.patcher.getnamed( "settings_picker" ), iOutlet );	
	outlet( iOutlet, setting );
	this.patcher.disconnect( this.box, iOutlet, this.patcher.getnamed( "settings_picker" ), iOutlet );	
}

function setPartialQuantity( quantity )
{
	settings.partialQuantity = quantity;

	dictSettings.replace( "settings::partialQuantity", settings.partialQuantity );

	util.ClearAllObjectsByScriptingName( "partial_");

	util.createPartials();
}

function getPartialQuantity()
{
	get( settings.partialQuantity, 0 );	
}

function setSequence( toggle )
{
	if ( toggle == 1) 
	{
		settings.sequence = "arithmetic"
	}
	else
	{
		settings.sequence = "geometric"
	}

	dictSettings.replace( "settings::sequence", settings.sequence );

}

function getSequence()
{
	if 	( settings.sequence.localeCompare( "arithmetic" ) == 0 ) 
	{
		get( 1, 1 );	
	}
	else
	{
		get( 0, 1 );	
	}	
}

function setOvertone( toggle )
{	
	settings.overtone = toggle;

	dictSettings.replace( "settings::overtone", settings.overtone );

}

function getOvertone()
{
	get( settings.overtone, 2 );	
}

function setArithmetic( multiplier )
{
	settings.arithmetic = multiplier;

	dictSettings.replace( "settings::arithmetic", settings.arithmetic );

}

function getArithmetic()
{
	get( settings.arithmetic, 3 );	
}

function setGeometric( multiplier )
{
	settings.geometric = multiplier;

	dictSettings.replace( "settings::geometric", settings.geometric );

}

function getGeometric()
{
	get( settings.geometric, 4 );		
}

function setPartialMultiplier( multiplier )
{
	settings.partialMultiplier = multiplier;

	dictSettings.replace( "settings::partialMultiplier", settings.partialMultiplier );

}

function getPartialMultiplier()
{
	get( settings.partialMultiplier, 5 );		
}

function setSustain( sustain )
{
	settings.sustain = sustain;

	dictSettings.replace( "settings::sustain", settings.sustain );

}

function getSustain()
{
	get( settings.sustain, 6 );		
}

function setExpDecay( decay )
{
	settings.expDecay = decay;

	dictSettings.replace( "settings::expDecay", settings.expDecay );

}

function getExpDecay()
{
	get( settings.expDecay, 7 );		
}

