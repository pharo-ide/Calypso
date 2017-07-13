tests
testBuildingFromMetaclassOfObject

	self retrieveGroupsFrom: {Object class}.
	
	self assert: actualObjects first class equals: ClyInheritedMethodGroup.
	self assert: actualObjects second class equals: ClyClassVariablesMethodGroup