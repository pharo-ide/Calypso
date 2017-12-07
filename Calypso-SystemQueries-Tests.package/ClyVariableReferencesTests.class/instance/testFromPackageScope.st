tests
testFromPackageScope

	self queryFromScope: ClyPackageScope of: self class package.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(reference1OfVar1 reference2OfVar1 #supeclassReferenceOfVar1)