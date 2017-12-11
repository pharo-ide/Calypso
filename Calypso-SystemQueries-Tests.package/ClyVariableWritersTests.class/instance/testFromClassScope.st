tests
testFromClassScope

	self queryFromScope: ClyBothMetaLevelClassScope of: self class.
	
	self assert: resultItems size equals: 2.
	self assert: foundSelectors equals: #(writer1OfVar1 writer2OfVar1)