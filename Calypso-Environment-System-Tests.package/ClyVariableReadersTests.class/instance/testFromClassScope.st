tests
testFromClassScope

	self queryInScope: ClyBothMetaLevelClassScope of: { self class }.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(reader1OfVar1 reader2OfVar1)