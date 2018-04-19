tests
testFillingWithSingleInstVar

	| methodQuery |
	queryResult fillWith: { ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1 }.
	
	self assertItems: {ClyAllMethodGroup. 0. 
		ClyVariableGroupItem. 0. ClyInstanceVariable. 1}.
	methodQuery := items last queryForChildrenNamed: #methods.
	self assert: methodQuery class equals: ClyVariableReferences.
	self 
		assert: methodQuery variableQuery resultItems 
		equals: {ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1}.
	methodQuery :=  items second queryForChildrenNamed: #methods.
	self assert: methodQuery class equals: ClyVariableReferences.
	self assert: methodQuery variableQuery class equals: ClyAllInstanceVariables.