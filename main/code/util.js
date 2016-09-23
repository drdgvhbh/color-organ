/* 
	Author: Ryan Lee
	Date: September 19, 2016

	Utility Functions
*/

var utilities = new Global( "utilities" );
var util = utilities.util = this;

var settings = new Global( "settings" );
var presets = new Global( "presets" ).kv;

var keyvalues = new Global( "keyvalues");
keyvalues.kv = new Dict( "keyvalues" );

//Removes all objects from patcher by their scripting name 
//Prefix is part of the scripting name
function ClearAllObjectsByScriptingName( prefix ) 
{
	var counter = 0; 
	while ( this.patcher.getnamed( prefix + counter.toString() ) )
	{
		this.patcher.remove( this.patcher.getnamed( prefix + counter.toString() ) );
		counter = counter + 1;
	}
}

//Finds all objects in patcher by scripting name and returns it as an array
//Prefix is part of the scripting name
function FindAllObjectsByScriptingName( prefix )
{
	var objs = new Array();
	var counter = 0; 
	while ( this.patcher.getnamed( prefix + counter.toString() ) )
	{
		objs.push(  this.patcher.getnamed( prefix + counter.toString() ) );
		counter = counter + 1;
	}
	return objs;
}

//Imports json data
function importData( sName )
{
	//import data into a dictionary
	var data = new Global( sName );
	data.kv = new Dict( sName );
	data.kv.import_json( sName + ".json" );

	// Show our data on the GUI
	var dictSettings = this.patcher.getnamed( sName + "_dict" );
	dictSettings.message( new Array( "bang" ) );
}

//Gets the preset point for an envelope
function getPresetPoint( sPresetName, iPointNumber, iPartialNumber )
{
	var list = new Array();
	post (iPointNumber);
	list[0] = presets.get( sPresetName + "::P" + iPointNumber.toString() + "::x" ) * settings.sustain; 
	list[1] = presets.get( sPresetName + "::P" + iPointNumber.toString() + "::y" ) * Math.pow( settings.expDecay, iPartialNumber );
	post( list[1] );
		
	return list;
}

function createPartials()
{
		for ( i = 0; i < settings.partialQuantity; i++ )
	{
		var x = keyvalues.kv.get( "keyvalues::partial::xPos" ) + i * keyvalues.kv.get( "keyvalues::partial::xOffset" );
		var y = keyvalues.kv.get( "keyvalues::partial::yPos" ) + i * keyvalues.kv.get( "keyvalues::partial::yOffset" );

		// Value to normalize the total amplitude of all partials combined to 1.0
		var norm = new Array();
		norm[0] = 1.0 / settings.partialQuantity;

		var partial = this.patcher.newdefault( x, y, "partial", norm );
		partial.varname = "partial_" + i.toString();
	}
}