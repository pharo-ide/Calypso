tests
testBuildingGroupsForClassWithoutMethodsWithUndeclares

	self buildGroupsFor: { Array }.
	
	self assert: builtGroups isEmpty