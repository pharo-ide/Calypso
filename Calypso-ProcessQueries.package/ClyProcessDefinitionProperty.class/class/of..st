instance creation
of: aProcess
	| context |
	context := aProcess suspendedContext.
	context ifNil: [ 
		aProcess == Processor activeProcess 
			ifTrue: [ context := thisContext sender ] 
			ifFalse: [ self error: 'should not happen' ] ].
		
	^self new
		activeContext: context;
		priority: aProcess priority