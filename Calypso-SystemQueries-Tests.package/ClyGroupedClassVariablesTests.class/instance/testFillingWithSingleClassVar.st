tests
testFillingWithSingleClassVar

	| var methodQuery |
	var := ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1.
	queryResult fillWith: { var }.
	
	self assertItems: {ClyVariableGroupItem. 0. ClyClassVariable. 1}.
	self assert: items last actualObject equals: var.
	methodQuery := items last queryForChildrenNamed: #methods.
	self assert: methodQuery class equals: ClyVariableReferences.
	self 
		assert: methodQuery variableQuery resultItems 
		equals: {ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1}.
	methodQuery := items first queryForChildrenNamed: #methods.
	self assert: methodQuery class equals: ClyVariableReferences.
	self assert: methodQuery variableQuery class equals: ClyAllClassVariables