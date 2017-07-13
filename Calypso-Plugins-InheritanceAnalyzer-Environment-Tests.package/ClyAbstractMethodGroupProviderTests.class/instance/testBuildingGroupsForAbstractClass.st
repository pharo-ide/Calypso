testing
testBuildingGroupsForAbstractClass

	self buildGroupsFor: { ClyAbstractClassExample }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyAbstractMethodGroup.
	self assert: builtGroups first classes equals: { ClyAbstractClassExample }.