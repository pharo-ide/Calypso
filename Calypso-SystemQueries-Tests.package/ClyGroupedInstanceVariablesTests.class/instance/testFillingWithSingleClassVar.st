tests
testFillingWithSingleClassVar

	| classVarGroup |
	queryResult fillWith: { ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1 }.
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyMethodGroup. 0}.
	classVarGroup := items last actualObject.
	self assert: classVarGroup methodQuery class  equals: ClyVariableReferences.
	self assert: classVarGroup methodQuery variableQuery class equals: ClyAllClassVariables.
	self assert: classVarGroup subgroupsQuery class equals: ClyAllClassVariables.