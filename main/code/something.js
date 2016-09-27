	this.patcher.hiddenconnect( this.box, 2,  this.patcher.getnamed( "live.gain~" ), 0);
	if ( totalFreq > 4000 && totalFreq < 15000 ) 
	{
		this.outlet( 2, -totalFreq / 1500.0 );
	}
	else if ( totalFreq > 15000 && totalFreq < 20000 )
	{
		this.outlet( 2, -totalFreq / 3000.0 );
	}
	else if ( totalFreq > 20000 && totalFreq < 50000 )
	{
		this.outlet( 2, 0.0 );
	}
	else if ( totalFreq > 50000 )
	{
		this.outlet( 2, -3.0 );
	}
	else
	{
		this.outlet( 2, 0.0 );
	}
	this.patcher.disconnect( this.box, 2, this.patcher.getnamed( "live.gain~" ), 0);