execution
buildResult: aQueryResult

	| vars |
	vars := OrderedCollection new.
	
	scope instanceVariablesDo: [ :each | vars add: each ].
	
	aQueryResult fillWith: vars