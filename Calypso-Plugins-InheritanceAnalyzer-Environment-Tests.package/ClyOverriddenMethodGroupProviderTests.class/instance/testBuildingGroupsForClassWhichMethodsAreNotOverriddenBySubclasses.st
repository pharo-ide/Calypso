testing
testBuildingGroupsForClassWhichMethodsAreNotOverriddenBySubclasses

	self buildGroupsFor: { ClyClassWhichInheritsAbstractClass }.
	
	self assert: builtGroups isEmpty