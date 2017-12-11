tests
testBuildingGroups

	self buildGroupsFor: self classSampleWhichHasGroup.
	
	self assert: builtGroups notEmpty