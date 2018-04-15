tests
testFillingWithThreeClasVarsOfSuperclassAndSubclass

	queryResult fillWith: { 
		ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1.
		ClyClassVariable named: #SubclassClassVar definedIn: ClySubclassLOfClass2FromP1.
		ClyClassVariable named: #ClassVar2 definedIn: ClyClass2FromP1}.
	
	self assertItems: {
		ClyVariableGroupItem. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVariableGroupItem. 0. ClyVariableMethodGroup. 1}.
	self assertVars: #(#ClassVar1 #ClassVar2 #SubclassClassVar).