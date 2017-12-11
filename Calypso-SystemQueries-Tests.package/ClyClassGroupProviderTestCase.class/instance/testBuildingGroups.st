tests
testBuildingGroups

	self buildGroupsFor: self packageSampleWhichHasGroup.
	
	self assert: builtGroups notEmpty