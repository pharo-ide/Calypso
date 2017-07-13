tests
testBuildingGroupsForClassWhichHasNoBreakpoints
	
	self buildGroupsFor: { ClyClassWithoutBreakMethods }.
	
	self assert: builtGroups size equals: 0