tests
testBuildingGroupsForClassWhichHasDeprecations

	self buildGroupsFor: { ClyClassWithDeprecatedMethods }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyDeprecatedMethodGroup.
	self assert: builtGroups first classes equals: { ClyClassWithDeprecatedMethods }.