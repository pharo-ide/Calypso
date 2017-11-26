tests
testFillingWithClassAndSuperclassVariables

	queryResult fillWith: { 
		ClyInstanceVariable named: #subclassN1Var declaredIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar2 declaredIn: ClyClass1FromP1.
		ClyInstanceVariable named: #subclassSameVar declaredIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 declaredIn: ClyClass1FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instanceSideVar1 #instanceSideVar2 #subclassN1Var #subclassSameVar 	).
	self assertDeclClasses: { ClyClass1FromP1. ClyClass1FromP1	.
		ClySubclassN1OfClass1FromP1. ClySubclassN1OfClass1FromP1 }