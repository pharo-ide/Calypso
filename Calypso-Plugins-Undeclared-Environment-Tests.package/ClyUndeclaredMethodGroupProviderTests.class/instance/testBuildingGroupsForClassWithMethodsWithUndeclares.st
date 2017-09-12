tests
testBuildingGroupsForClassWithMethodsWithUndeclares

	self buildGroupsFor: { ClyClassWithUndeclares }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyUndeclaredMethodGroup.
	self assert: builtGroups first classes equals: { ClyClassWithUndeclares }.