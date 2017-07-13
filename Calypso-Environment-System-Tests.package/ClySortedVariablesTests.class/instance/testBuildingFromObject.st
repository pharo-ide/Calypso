tests
testBuildingFromObject

	self retrieveGroupsFrom: {Object}.
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0}
	