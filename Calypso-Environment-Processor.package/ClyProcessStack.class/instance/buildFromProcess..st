building
buildFromProcess: aProcess
	
	| sender |
	sender := aProcess suspendedContext.
	[ sender notNil ] whileTrue: [ 
		items add: (ClyEnvironmentItem named: sender method selector with: sender).
		sender := sender sender
	 ] 