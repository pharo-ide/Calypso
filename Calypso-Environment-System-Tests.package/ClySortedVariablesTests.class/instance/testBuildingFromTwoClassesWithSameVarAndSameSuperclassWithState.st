tests
testBuildingFromTwoClassesWithSameVarAndSameSuperclassWithState

	self retrieveGroupsFrom: {ClySubclassN1OfClass1FromP1. ClySubclassN2OfClass1FromP1 }.		
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#subclassN1Var #subclassSameVar
			#subclassN2Var #subclassSameVar 
			#instanceSideVar1 #instanceSideVar2).
	self assert: actualObjects third declarationClass equals: ClySubclassN1OfClass1FromP1.
	self assert: actualObjects sixth declarationClass equals: ClySubclassN2OfClass1FromP1.
	self assert: (actualObjects atLast: 3) declarationClass equals: ClyClass1FromP1.