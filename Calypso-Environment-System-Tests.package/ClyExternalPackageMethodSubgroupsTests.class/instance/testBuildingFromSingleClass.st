tests
testBuildingFromSingleClass

	self retrieveSubgroupsFrom: { ClySubclassLOfClass0FromPExtendedByP1 }.

	self assertItems: {ClyClass1FromP1 package. 0}.
	self assert: cursor observedContent itemScope equals: ClyMethodGroupScope 