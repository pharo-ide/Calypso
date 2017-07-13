tests
testBuildingGroupsForClassWhichHasNoDeprecations

	self buildGroupsFor: { ClyClassWithoutDeprecatedMethods }.
	
	self assert: builtGroups size equals: 0