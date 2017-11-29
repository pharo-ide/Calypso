execution
buildResult: aQueryResult

	| vars |
	vars := OrderedCollection new.
	
	scope classVariablesDo: [ :each | vars add: each ].
	
	aQueryResult fillWith: vars