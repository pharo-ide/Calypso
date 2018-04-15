tests
testFillingWithSingleClassVar

	| classVarGroup allClassVarGroup |
	queryResult fillWith: { ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1 }.
	
	self assertItems: {ClyVariableGroupItem. 0. ClyVariableMethodGroup. 1}.
	classVarGroup := items last actualObject.
	self assert: classVarGroup methodQuery class equals: ClyVariableReferences.
	self 
		assert: classVarGroup methodQuery variableQuery resultItems 
		equals: {ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1}.
	allClassVarGroup :=  items first actualObject.
	self assert: allClassVarGroup methodQuery class equals: ClyVariableReferences.
	self assert: allClassVarGroup methodQuery variableQuery class equals: ClyAllClassVariables.