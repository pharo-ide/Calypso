tests
testFromPackageScope

	self queryInScope: ClyPackageScope of: { self class package }.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(supeclassWriterOfVar1 writer1OfVar1 writer2OfVar1)