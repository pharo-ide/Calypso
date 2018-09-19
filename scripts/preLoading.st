"Force the load of Calypso here, because smalltalkCI does not forces the 
 load (then it does not updates)."
Stdio stdout << 'WORKAROUND >>>'; lf.
[ 
	Iceberg enableMetacelloIntegration: false.
	Metacello new
  		baseline: 'Calypso';
  	  	repository: 'github://pharo-ide/Calypso:dev/src';
  	  	onConflict: [ :e :loaded :incoming ];
  	  	onUpgrade: [ :ex :loaded :incoming | ex useIncoming ];
		onWarningLog;
  	  	load ]
ensure: [
	Iceberg enableMetacelloIntegration: true ].
Stdio stdout << '<<< WORKAROUND'; lf.
  