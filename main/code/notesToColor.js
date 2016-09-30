/* 
	Author: Ryan Lee
	Date: September 19, 2016

	Gets all the sound note input and outputs something to the colour thing
*/
inlets = 9;
outlets = 5;

var thisSetting = 0;

//is a pre condition essentially
if ( jsarguments.length > 1 )
{
	thisSetting = jsarguments[1];
}

var util = new Global( "utilities" + thisSetting ).util;

var MAXIMUM = 255.0;
var MINIMUM = 0.0;

//LAST TIME SINCE INPUT Variables
var time = new Array();

//Sustain for each inlet input
var sustain = new Array();

// Color 
var color = new Array();

//Saturation change from freuqnecy 
var sat = new Array();

// the previous saturation 
var oldSaturation = 0;


// the real saturation
var saturation = 127;

//the real luminosity
var luminosity = 127;

//
var LUMI_BASE = 95.25/(MAXIMUM*2);

function bang()
{
	// how many colours were actually added to the color equation and is basically how many things are playing
	var counter = 0;
	// the hue of the color in notes so 1 / 30th of the hue
	var hue = 0;
	// add up the elapsed sustain of all sounds and scale it to the saturation
	var saturation = 0;

	for ( i = 0; i < time.length; i++ )
	{
		if (i != 0) {
			//post("Main: " + i + ", " +"Max: " + ( sustain[i] / 1000 )+ ", " + "Diff: " + ( ( new Date().getTime() / 1000 ) - time[i]) + "\n" );
			if (sustain[i] != null && time[i] != null) {
				if ( ( new Date().getTime() / 1000 ) - time[i] <= sustain[i] / 1000)
				{
					hue = hue + color[i];
					counter = counter + 1;
				}
			}
		}
	}


	if (counter > 0) 
	{
		hue = hue / counter;
		//post( "Hue: " + hue + ", " + "Counter: " + counter + "\n");

		outlet( 0, hue );
	}
	else
	{
		outlet( 0, 0 );
		outlet( 1, 0 );
	}


}

//A list that has the note as parameter 1 and the sustain as parameter 2
function list( input )
{
	if ( this.inlet == 8 ) 
		return;
	// get the values with function arrayfromargs()
	input = arrayfromargs( messagename, arguments );

	time[this.inlet] = new Date().getTime() / 1000;
	color[this.inlet] = input[0];
	sustain[this.inlet] = input[1];
	sat[this.inlet] = input[2];

	// how many colours were actually added to the color equation and is basically how many things are playing
	var counter = 0;
	// the hue of the color in notes so 1 / 30th of the hue
	var hue = 0;
	// add up the elapsed sustain of all sounds and scale it to the saturation
	var saturation = 0;

	for ( i = 0; i < time.length; i++ )
	{
		if (i != 0) {
			//post("Main: " + i + ", " +"Max: " + ( sustain[i] / 1000 )+ ", " + "Diff: " + ( ( new Date().getTime() / 1000 ) - time[i]) + "\n" );
			if (sustain[i] != null && time[i] != null) {
				if ( ( new Date().getTime() / 1000 ) - time[i] <= sustain[i] / 1000)
				{
					hue = hue + color[i];
					counter = counter + 1;
					saturation = saturation + ( ( new Date().getTime() / 1000 ) - time[i] );
				}
			}
		}
	}


	if (counter > 0) 
	{
		hue = hue / counter;
		//post( "Hue: " + hue + ", " + "Counter: " + counter + "\n");

		outlet( 0, hue );
		outlet( 1, sustain[this.inlet] );
	}
	else
	{
		outlet( 0, 0 );
		outlet( 1, 0 );
	}


	//post( saturation + ", " + oldSaturation + "\n" );
	//var satOut = ( ( saturation - oldSaturation ) * counter) + ( sat[this.inlet] );
	var satOut = sat[this.inlet];
	if (satOut < 0)
	{
		satOut = satOut * ( 1 / ( util.log10( this.saturation/(MAXIMUM) ) / util.log10( LUMI_BASE ) ) );
	}
	//post(satOut + "\n");
	//post("Before: " + ( ( saturation - oldSaturation ) * counter) + ", After: " + satOut +"\n");

	// Add or subtract saturation
	if ( this.getSaturation() > MAXIMUM )
	{
		
		outlet( 2, ( MAXIMUM - this.getSaturation() ) );
		//post( "Change: " + (MAXIMUM - this.getSaturation()) + "\n" );
		//this.setSaturation( MAXIMUM );
	}
	else if ( this.getSaturation() < MINIMUM )
	{
		outlet( 2, ( MINIMUM - this.getSaturation() ) );
		//this.setSaturation( MINIMUM );
	}
	else
	{
		outlet( 2, ( ( saturation - oldSaturation ) * counter) + satOut );		
		oldSaturation = saturation;
	}

}

function msg_float( amp )
{
	if ( this.inlet != 8 )
		return;
	if ( amp != 0)
		{
		var base = ( util.log10( this.luminosity/(MAXIMUM) ) / util.log10( LUMI_BASE ) );

		var output = luminosity * ( base + ( Math.abs( amp ) - 0.5 ) );
		//post( output.toFixed(2) + "\n" );
		if ( output > MAXIMUM ) 
		{
			outlet( 3, MAXIMUM );
			this.setLuminosity( MAXIMUM );
		}
		else if ( output < MINIMUM )
		{
			this.setLuminosity( MINIMUM );
			outlet( 3, MINIMUM );
		}
		else if ( Math.abs( output ) >= 1 )
		{
			outlet( 3, output );
		}
		else 
		{
			outlet( 3, 1 );
		}
	}
	else
	{
		outlet( 4, 0 );
	}
	


}

function setSaturation( flSaturation )
{
	this.saturation = flSaturation;
}

function getSaturation()
{
	return this.saturation;
}


function setLuminosity( flLuminosity )
{
	this.luminosity = flLuminosity;
}

function getLuminosity()
{
	return this.luminosity;
}