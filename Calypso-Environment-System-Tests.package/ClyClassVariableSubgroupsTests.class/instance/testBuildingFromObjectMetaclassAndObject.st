tests
testBuildingFromObjectMetaclassAndObject

	self retrieveSubgroupsFrom: {Object class. Object}.
	
	self assertItems: {ClyVarsDeclarationMethodGroup. 0. ClyVariableMethodGroup. 1}.
	self assert: actualObjects last name equals: Object classVariables first name