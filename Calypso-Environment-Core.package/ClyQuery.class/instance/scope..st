accessing
scope: aScope
	aScope isBoundToEnvironment ifFalse: [ 
		^self error: 'Query should be always initialized with scope bound to concrete environment' ].
	(aScope supportsQuery: self) ifFalse: [ 
		self error: 'Given scope do not support given query! Try use #adoptQuery:' ].
	
	scope := aScope