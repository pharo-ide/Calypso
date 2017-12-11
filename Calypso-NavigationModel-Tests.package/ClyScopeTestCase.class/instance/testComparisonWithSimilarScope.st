tests
testComparisonWithSimilarScope

	| scope2 |
	scope := self createSampleScope.
	scope2 := self createSampleScope.
	
	self assert: scope equals: scope2.
	self assert: scope hash equals: scope2 hash