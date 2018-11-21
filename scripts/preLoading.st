"Force the load of Calypso here, because smalltalkCI does not forces the 
 load (then it does not updates)."
Stdio stdout << 'WORKAROUND >>>'; lf.
Iceberg enableMetacelloIntegration: false.
Metacello new
	baseline: 'Calypso';
	repository: 'tonel://src';
	onConflict: [ :ex :loaded :incoming | ex useIncoming ];
	onUpgrade: [ :ex :loaded :incoming | ex useIncoming ];
	onWarningLog;
	load.
Iceberg enableMetacelloIntegration: true.
Stdio stdout << '<<< WORKAROUND'; lf.
  