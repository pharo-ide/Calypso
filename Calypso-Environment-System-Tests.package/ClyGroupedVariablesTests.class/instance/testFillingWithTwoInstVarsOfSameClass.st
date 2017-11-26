tests
testFillingWithTwoInstVarsOfSameClass
	| variables |
	variables := {
		ClyInstanceVariable named: #instanceSideVar2 definedIn: ClyClass1FromP1.
		ClyInstanceVariable named: #instanceSideVar1 definedIn: ClyClass1FromP1}.
	queryResult fillWith: variables.
	
	self assertItems: {ClyInheritedMethodGroup. 0. 
		ClyVarDefinitionMethodGroup. 0. ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1 }.
	self assertVars: #(#instanceSideVar1 #instanceSideVar2 ).
	self 
		assert: items second actualObject variables asSet
		equals: variables asSet