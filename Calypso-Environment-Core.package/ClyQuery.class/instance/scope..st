accessing
scope: aScope
	aScope isBoundToEnvironment ifFalse: [ 
		^self error: 'Query should be always initialized with scope bound to concrete environment' ].
	
	scope := aScope