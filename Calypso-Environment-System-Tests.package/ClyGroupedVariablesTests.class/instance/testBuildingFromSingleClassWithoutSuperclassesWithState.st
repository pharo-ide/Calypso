tests
testBuildingFromSingleClassWithoutSuperclassesWithState

	self retrieveGroupsFrom: { ClyClass1FromP1 }.		
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0.
		ClyVarsDeclarationMethodGroup. 0. 
		ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instanceSideVar1 #instanceSideVar2 )