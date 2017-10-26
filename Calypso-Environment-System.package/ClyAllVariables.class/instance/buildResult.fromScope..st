execution
buildResult: aQueryResult fromScope: anEnvironmentScope

	| allVars |
	allVars := OrderedCollection new.
	
	anEnvironmentScope variablesDo: [ :each | allVars add: each ].
	
	aQueryResult fillWith: allVars