tests
testFillingWithOneInstVarAndTwoClassVarsOfSameClass

	queryResult fillWith: { 
		ClyInstanceVariable named: #instVar definedIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar2 definedIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1}.
	
	self assertItems: {ClyAllMethodGroup. 0. ClyMethodGroup. 0.
		ClyVariableGroupItem. 0. ClyInstanceVariable. 1 }.
	self assertVars: #(#instVar)