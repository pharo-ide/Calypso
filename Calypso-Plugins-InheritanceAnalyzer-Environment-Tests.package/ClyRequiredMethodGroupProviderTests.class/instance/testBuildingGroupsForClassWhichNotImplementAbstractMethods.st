testing
testBuildingGroupsForClassWhichNotImplementAbstractMethods

	self buildGroupsFor: { ClyClassWhichInheritsAbstractSubclass }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyRequiredMethodGroup.
	self assert: builtGroups first classes equals: { ClyClassWhichInheritsAbstractSubclass }.