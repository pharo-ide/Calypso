tests
testBuildingGroupsForClassWhichHasBreakpoints
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.
	
	self buildGroupsFor: { ClyClassWithBreakMethods }.
	
	self assert: builtGroups size equals: 1.
	self assert: builtGroups first class equals: ClyBreakMethodGroup.
	self assert: builtGroups first classes equals: { ClyClassWithBreakMethods }.