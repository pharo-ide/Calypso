tests
testFillingWithClassAndSuperclassVariables

	queryResult fillWith: { 
		ClyInstanceVariable named: #subclassN1Var definedIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar2 definedIn: ClyClass1FromP1.
		ClyInstanceVariable named: #subclassSameVar definedIn: ClySubclassN1OfClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 definedIn: ClyClass1FromP1}.
	
	self assertItems: {ClyAllMethodGroup. 0.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instanceSideVar1 #instanceSideVar2 #subclassN1Var #subclassSameVar)