tests
testFillingWithSingleClassInstVars

	queryResult fillWith: { 
		ClyInstanceVariable named: #instanceSideVar2 declaredIn: ClyClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 declaredIn: ClyClass1FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0. 
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instanceSideVar1 #instanceSideVar2 )