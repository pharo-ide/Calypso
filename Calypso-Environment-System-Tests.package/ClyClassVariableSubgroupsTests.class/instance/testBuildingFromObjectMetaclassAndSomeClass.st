tests
testBuildingFromObjectMetaclassAndSomeClass

	self retrieveSubgroupsFrom: {Object class. ClyClass1FromP1}.
	
	self assertItems: {ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assert: actualObjects last name equals: Object classVariables first name