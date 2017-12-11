tests
testVariablesEnumerationWhenThereAreNoVariables
	scope := ClyClassScope of: ProtoObject.
	
	scope variablesDo: [ :each | result add: each ].
	
	self assert: result isEmpty