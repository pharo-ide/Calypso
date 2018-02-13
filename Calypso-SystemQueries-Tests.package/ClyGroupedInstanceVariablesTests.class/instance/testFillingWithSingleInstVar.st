tests
testFillingWithSingleInstVar

	| classVarGroup allClassVarGroup |
	queryResult fillWith: { ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1 }.
	
	self assertItems: {ClyCurrentMetaLevelMethodGroup. 0. 
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1}.
	classVarGroup := items last actualObject.
	self assert: classVarGroup methodQuery class equals: ClyVariableReferences.
	self 
		assert: classVarGroup methodQuery variableQuery resultItems 
		equals: {ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1}.
	allClassVarGroup :=  items second actualObject.
	self assert: allClassVarGroup methodQuery class equals: ClyVariableReferences.
	self assert: allClassVarGroup methodQuery variableQuery class equals: ClyAllInstanceVariables.