/*
	Author: Ryan Lee
	Date: September 19, 2016

	This script is used to instantiate objects and intialize settings.
*/
var thisSetting = 0;

//is a pre condition essentially
if ( jsarguments.length > 1 )
{
	thisSetting = jsarguments[1];
}

var settings = new Global( "settings" + thisSetting );
settings.kv = new Dict( "settings" );

var util = new Global( "utilities" + thisSetting ).util;

var keyvalues = new Global( "keyvalues");
keyvalues.kv = new Dict( "keyvalues" );

var presets = new Global( "presets" + thisSetting );

/* 
	Executes when issued a bang message.
	Runs the setup function.
*/
function bang()
{
	clear();
	setup();
}

// Here we run a set of functions to instantiate objects and intialize functions
function setup() 
{
	util.importData( "keyvalues" );
	util.importData( "presets" );
	util.definePreset();

	// tell our settings javascript to execute its methods
	var jsSettings = this.patcher.getnamed( "settings_js" );
	jsSettings.message( new Array( "bang" ) );

	util.createPartials();

}

function clear() 
{
	util.ClearAllObjectsByScriptingName( "partial_");
}			