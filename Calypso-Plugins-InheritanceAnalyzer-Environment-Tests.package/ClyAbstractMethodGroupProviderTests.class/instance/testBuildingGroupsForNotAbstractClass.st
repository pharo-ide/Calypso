testing
testBuildingGroupsForNotAbstractClass

	self buildGroupsFor: { Point }.
	
	self assert: builtGroups isEmpty