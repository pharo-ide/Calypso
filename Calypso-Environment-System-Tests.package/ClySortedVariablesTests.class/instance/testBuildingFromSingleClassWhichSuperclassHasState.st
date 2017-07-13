tests
testBuildingFromSingleClassWhichSuperclassHasState

	self retrieveGroupsFrom: { ClySubclassN1OfClass1FromP1 }.		
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #( #subclassN1Var #subclassSameVar 	#instanceSideVar1 #instanceSideVar2).
	self assertDeclClasses: { ClySubclassN1OfClass1FromP1. ClySubclassN1OfClass1FromP1.
			ClyClass1FromP1. ClyClass1FromP1	 }