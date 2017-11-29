tests
testFromLocalClassScope

	self queryInScope: ClyBothMetaLevelClassScope of: { self class}.
	
	self assert: foundSelectors equals: #(classSideSender1OfMessage1 classSideSender2OfMessage1 
		sender1OfMessage1 sender2OfMessage1)
	