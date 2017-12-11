tests
testInstVarsEnumerationWhenThereAreNoVariables
	scope := ClyClassScope of: Object.
	
	scope instanceVariablesDo: [ :each | result add: each ].
	
	self assert: result isEmpty