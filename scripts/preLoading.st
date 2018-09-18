"Force the load of Calypso here, because smalltalkCI does not forces the 
 load (then it does not updates)."
Metacello new
  baseline: 'Calypso';
  repository: 'github://pharo-ide/Calypso:dev';
  onConflictUseIncoming;
  onUpgrade: [ :ex :loaded :incoming | ex useIncoming ];
  load.