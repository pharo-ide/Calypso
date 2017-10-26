tests
testFillingWithTwoEqualVarsOfDifferentSubclassesAndOneVarOfSuperclass

	queryResult fillWith: { 
		ClyInstanceVariable named: #subclassSameVar declaredIn: ClySubclassN2OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar2 declaredIn: ClyClass1FromP1.
		ClyInstanceVariable named: #subclassSameVar declaredIn: ClySubclassN1OfClass1FromP1}.
	
	self assertItems: {ClyInheritedMethodGroup. 0. 
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assertVars: #(#subclassSameVar #subclassSameVar #instanceSideVar2).
	self assertDeclClasses: { 
		ClySubclassN1OfClass1FromP1. ClySubclassN2OfClass1FromP1. 	ClyClass1FromP1 }