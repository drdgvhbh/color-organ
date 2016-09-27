/* 
	Author: Ryan Lee
	Date: September 19, 2016

	Gets all the sound note input and outputs something to the colour thing
*/
inlets = 3;
outlets = 3;

//LAST TIME SINCE INPUT Variables
var time = new Array();

//Sustain for each inlet input
var sustain = new Array();

// Color 
var color = new Array();

// the previous saturation 
var oldSaturation = 0;

//A list that has the note as parameter 1 and the sustain as parameter 2
function list( input )
{
	// get the values with function arrayfromargs()
	input = arrayfromargs( messagename, arguments );

	time[this.inlet] = new Date().getTime() / 1000;
	color[this.inlet] = input[0];
	sustain[this.inlet] = input[1];

	// how many colours were actually added to the color equation and is basically how many things are playing
	var counter = 0;
	// the hue of the color in notes so 1 / 30th of the hue
	var hue = 0;
	// add up the elapsed sustain of all sounds and scale it to the saturation
	var saturation = 0;

	for ( i = 0; i < time.length; i++ )
	{
		if ( ( new Date().getTime() / 1000 ) - time[i] <= sustain[i] )
		{
			hue = hue + color[i];
			counter = counter + 1;
			saturation = saturation + ( ( new Date().getTime() / 1000 ) - time[i] );
		}

	}


	hue = hue / counter;

	outlet( 0, hue );
	outlet( 1, sustain[this.inlet] );

	post( saturation + ", " + oldSaturation + "\n" );
	// Add or subtract saturation
	outlet( 2, ( saturation - oldSaturation ) * counter );
	oldSaturation = saturation;

}
