tests
testBuildingFromSingleMethod
	| classes result |
	result := environment systemCritic analyze: ClyAnalyzedClassStub class >> #methodWithHalt.
	[ result isComplete  ] whileFalse: [ 30 milliSeconds wait ].
	classes := environment selectScope: ClyMethodScope of: { ClyAnalyzedClassStub class >> #methodWithHalt}.
		
	self retrieveContentFrom: classes.
	
	self assert: actualObjects size equals: 1