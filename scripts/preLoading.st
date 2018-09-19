"Force the load of Calypso here, because smalltalkCI does not forces the 
 load (then it does not updates)."
Stdio stdout << 'WORKAROUND >>>'; lf.
Metacello new
	baseline: 'Calypso';
	repository: 'gitlocal://src';
	onConflict: [ :ex :loaded :incoming | ex useIncoming ];
	onUpgrade: [ :ex :loaded :incoming | ex useIncoming ];
	onWarningLog;
	load.
Stdio stdout << '<<< WORKAROUND'; lf.
  