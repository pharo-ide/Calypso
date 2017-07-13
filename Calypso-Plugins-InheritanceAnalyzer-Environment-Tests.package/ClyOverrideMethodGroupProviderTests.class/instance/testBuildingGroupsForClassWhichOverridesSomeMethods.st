testing
testBuildingGroupsForClassWhichOverridesSomeMethods

	self buildGroupsFor: { ClyClassWhichInheritsAbstractClass }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyOverrideMethodGroup.
	self assert: builtGroups first classes equals: { ClyClassWhichInheritsAbstractClass }.