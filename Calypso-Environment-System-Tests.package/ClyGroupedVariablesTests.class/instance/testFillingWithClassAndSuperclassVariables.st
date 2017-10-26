tests
testFillingWithClassAndSuperclassVariables

	queryResult fillWith: { 
		ClyInstanceVariable named: #subclassN1Var declaredIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar2 declaredIn: ClyClass1FromP1.
		ClyInstanceVariable named: #subclassSameVar declaredIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 declaredIn: ClyClass1FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #( #subclassN1Var #subclassSameVar 	#instanceSideVar1 #instanceSideVar2).
	self assertDeclClasses: { ClySubclassN1OfClass1FromP1. ClySubclassN1OfClass1FromP1.
			ClyClass1FromP1. ClyClass1FromP1	 }