execution
buildResult: aQueryResult

	| allVars |
	allVars := OrderedCollection new.
	
	scope variablesDo: [ :each | allVars add: each ].
	
	aQueryResult fillWith: allVars