queries
classGroupsDo: aBlock
	| package |
	basisObjects size > 1 ifTrue: [ self error: 'Multiple packages is not supported!' ].	
	package := basisObjects anyOne.
	
	self classGroupProvidersDo: [ :groupProvider |
		groupProvider classGroupsDo: aBlock ]