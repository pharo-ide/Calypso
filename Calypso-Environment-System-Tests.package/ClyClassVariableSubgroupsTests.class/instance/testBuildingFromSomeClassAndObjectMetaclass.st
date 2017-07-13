tests
testBuildingFromSomeClassAndObjectMetaclass

	self retrieveSubgroupsFrom: {ClyClass1FromP1. Object class}.
	
	self assertItems: {ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assert: actualObjects last name equals: Object classVariables first name