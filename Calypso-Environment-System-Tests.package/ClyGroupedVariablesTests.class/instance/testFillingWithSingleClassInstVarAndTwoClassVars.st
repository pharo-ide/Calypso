tests
testFillingWithSingleClassInstVarAndTwoClassVars

	queryResult fillWith: { 
		ClyInstanceVariable named: #instVar declaredIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar2 declaredIn: ClyClass2FromP1.
		ClyClassVariable named: #ClassVar1 declaredIn: ClyClass2FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instVar )