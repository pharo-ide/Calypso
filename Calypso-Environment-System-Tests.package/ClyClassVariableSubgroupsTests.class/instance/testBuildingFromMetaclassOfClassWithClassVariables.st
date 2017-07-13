tests
testBuildingFromMetaclassOfClassWithClassVariables

	self retrieveSubgroupsFrom: {ClyClass2FromP1 class}.
	
	self assertItems: {ClyVarsDeclarationMethodGroup. 0. 
		ClyVariableMethodGroup. 1. ClyVariableMethodGroup. 1.
		ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assert: actualObjects second name equals: #ClassVar1.
	self assert: actualObjects third name equals: #ClassVar2.
	self assert: actualObjects last name equals: Object classVariables first name