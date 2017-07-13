testing
testBuildingGroupsForClassWhichNotOverridesAnything

	self buildGroupsFor: { ClyClassWhichInheritsAbstractSubclass }.
	
	self assert: builtGroups isEmpty