building
buildFromProcess: aProcess
	
	| sender |
	sender := aProcess suspendedContext ifNil: [
		aProcess == Processor activeProcess 
			ifTrue: [thisContext sender]
			ifFalse: [ self error: 'should not happen' ]].
	[ sender notNil ] whileTrue: [ 
		items add: (ClyBrowserItem named: sender method selector with: sender).
		sender := sender sender
	 ] 