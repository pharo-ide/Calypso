tests
testFromPackageScope

	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(reader1OfVar1 reader2OfVar1 supeclassReaderOfVar1)