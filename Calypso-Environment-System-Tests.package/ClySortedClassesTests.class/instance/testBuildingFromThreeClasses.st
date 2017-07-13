tests
testBuildingFromThreeClasses

	| classes |
	classes := environment 
		selectScope: ClyLocalClassScope of: { ClyClass2FromP1. ClyClass0FromPWithSingleClass. ClyClass1FromP1}.
		
	self retrieveContentFrom: classes.

	self assert: actualObjects equals: {ClyClass0FromPWithSingleClass. ClyClass1FromP1. ClyClass2FromP1}.