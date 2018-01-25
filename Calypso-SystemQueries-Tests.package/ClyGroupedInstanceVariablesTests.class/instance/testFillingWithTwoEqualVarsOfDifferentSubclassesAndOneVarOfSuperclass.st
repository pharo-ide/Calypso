tests
testFillingWithTwoEqualVarsOfDifferentSubclassesAndOneVarOfSuperclass

	queryResult fillWith: { 
		ClyInstanceVariable named: #subclassSameVar definedIn: ClySubclassN2OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar2 definedIn: ClyClass1FromP1.
		ClyInstanceVariable named: #subclassSameVar definedIn: ClySubclassN1OfClass1FromP1}.
	
	self assertItems: {ClyAllMethodGroup. 0. 
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assertVars: #(#instanceSideVar2 #subclassSameVar #subclassSameVar).