/* 
	Author: Ryan Lee
	Date: September 19, 2016

	Here we can customize the output of our program by setting a number of keyvalues.
*/
outlets = 9;

var thisSetting = 0;

//is a pre condition essentially
if ( jsarguments.length > 1 )
{
	thisSetting = jsarguments[1];
}

var settings = new Global( "settings" + thisSetting );

settings.kv = new Dict( "settings" );

var keyvalues = new Global( "keyvalues");
keyvalues.kv = new Dict( "keyvalues" );

var util = new Global( "utilities" + thisSetting ).util;

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
	settings.partialQuantity = settings.kv.get( "settings" + thisSetting + "::" + "partialQuantity" );
	declareattribute("partialQuantity", setPartialQuantity, getPartialQuantity, 0);	
	//this.getPartialQuantity();

	// What is the default fundamental frequency?
	settings.fundamental = settings.kv.get( "settings" + thisSetting + "::" + "fundamental" );
	this.getPartialQuantity();

	// Which sequence should be used to create partials? Arithmetic or Geometric? 
	settings.sequence = settings.kv.get( "settings" + thisSetting + "::" + "sequence" );
	declareattribute("sequence", setSequence, getSequence, 0);
	this.getSequence();

	// Overtone or Partial?
	// @pre 1 or 0
	settings.overtone = settings.kv.get( "settings" + thisSetting + "::" + "overtone" );
	declareattribute("overtone", setOvertone, getOvertone, 0);
	this.getOvertone();

	/*	Arithmetic multiplier for the sequence
		A value of 1 will create a sequence of 100, 200, 300 , 400, ...
		A value of 2 will create a sequence of 100, 300, 500, 700, ...
		Minimum value of 1															
	*/ 
	settings.arithmetic = settings.kv.get( "settings" + thisSetting + "::" + "arithmetic" );
	declareattribute("arithmetic", setArithmetic, getArithmetic, 0);
	this.getArithmetic();

	/* 	Geometric multiplier for the sequence. The exponent of the Math.pow function
		A value of 1 will result in the exponent to be 1, 2, 3, ...
		A value of 2 will result in the exponent to be 1, 4, 6, 8, ...
	*/
	settings.geometric = settings.kv.get( "settings" + thisSetting + "::" + "geometric" );
	declareattribute("geometric", setGeometric, getGeometric, 0);
	this.getGeometric();

	/* If the output is a partial then what percentage of oscillation should the output have?
		E.x. a value of 0.02 will result in an osscillation of a given frequency to be set between 0.98% and 1.02%
		therefore given a frequency of 100. It will be changed so that it could lie between 98 to 102. 
		Should not exceed 0.49 because the the value could be lower than the fundamental	
	*/
	settings.partialMultiplier = settings.kv.get( "settings" + thisSetting + "::" + "partialMultiplier" );
	declareattribute("partialMultiplier", setPartialMultiplier, getPartialMultiplier, 0);
	this.getPartialMultiplier();

	/*
		How long should a note play? By default it plays over one second.
	*/
	settings.sustain = settings.kv.get( "settings" + thisSetting + "::" + "sustain" );
	declareattribute("sustain", setSustain, getSustain, 0);
	this.getSustain();



	// How should much should the amplitude decay over partials? Formula: Ffundamental * ( decay ) ^ partialNumber ?
	// lower value == faster decay
	// higher value == slower decay
	settings.expDecay = settings.kv.get( "settings" + thisSetting + "::" + "expDecay" );
	declareattribute("expDecay", setExpDecay, getExpDecay, 0);
	this.getExpDecay();

	//Envelope Preset
	//http://i.imgur.com/5EzuEH4.png
	settings.envelope = settings.kv.get( "settings" + thisSetting + "::" + "envelope" );
	declareattribute("envelope", setEnvelope, getEnvelope, 0);
	this.getEnvelope();


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

	dictSettings.replace( "settings" + thisSetting + "::" + "partialQuantity", settings.partialQuantity );

	util.ClearAllObjectsByScriptingName( "partial_");

	util.createPartials();
}

function getPartialQuantity()
{
	var pq = new Array();
	pq[0] = "set";
	pq[1] = settings.partialQuantity;
	get( pq, 0 );	
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

	dictSettings.replace( "settings" + thisSetting + "::" + "sequence", settings.sequence );

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

	dictSettings.replace( "settings" + thisSetting + "::" + "overtone", settings.overtone );

}

function getOvertone()
{
	get( settings.overtone, 2 );	
}

function setArithmetic( multiplier )
{
	settings.arithmetic = multiplier;

	dictSettings.replace( "settings" + thisSetting + "::" + "arithmetic", settings.arithmetic );

}

function getArithmetic()
{
	get( settings.arithmetic, 3 );	
}

function setGeometric( multiplier )
{
	settings.geometric = multiplier;

	dictSettings.replace( "settings" + thisSetting + "::" + "geometric", settings.geometric );

}

function getGeometric()
{
	get( settings.geometric, 4 );		
}

function setPartialMultiplier( multiplier )
{
	settings.partialMultiplier = multiplier;

	dictSettings.replace( "settings" + thisSetting + "::" + "partialMultiplier", settings.partialMultiplier );

}

function getPartialMultiplier()
{
	get( settings.partialMultiplier, 5 );		
}

function setSustain( sustain )
{
	settings.sustain = sustain;

	dictSettings.replace( "settings" + thisSetting + "::" + "sustain", settings.sustain );	

}

function getSustain()
{
	get( settings.sustain, 6 );		
	this.patcher.hiddenconnect( this.box, 6, this.patcher.getnamed( "PB_control" ), 1 );	
	outlet( 6, settings.sustain * 1000 );
	this.patcher.disconnect( this.box, 6, this.patcher.getnamed( "PB_control" ), 1 );
}

function setExpDecay( decay )
{
	settings.expDecay = decay;

	dictSettings.replace( "settings" + thisSetting + "::" + "expDecay", settings.expDecay );

}

function getExpDecay()
{
	get( settings.expDecay, 7 );		
}

function setEnvelope( sEnvelope )
{
	settings.envelope = sEnvelope;

	dictSettings.replace( "settings" + thisSetting + "::" + "envelope", settings.envelope );

}

function getEnvelope()
{
	get( settings.envelope, 8 );		
}