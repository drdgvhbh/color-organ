/*
	Author: Ryan Lee
	Date: September 19, 2016

	This script is used to instantiate objects and intialize settings.
*/

var settings = new Global( "settings" );
settings.kv = new Dict( "settings" );

var util = new Global( "utilities" ).util;

var keyvalues = new Global( "keyvalues");
keyvalues.kv = new Dict( "keyvalues" );

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

	// tell our settings javascript to execute its methods
	var jsSettings = this.patcher.getnamed( "settings_js" );
	jsSettings.message( new Array( "bang" ) );

	util.createPartials();

}

function clear() 
{
	util.ClearAllObjectsByScriptingName( "partial_");
}			