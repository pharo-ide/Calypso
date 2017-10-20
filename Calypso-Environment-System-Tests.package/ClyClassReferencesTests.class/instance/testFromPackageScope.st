tests
testFromPackageScope

	self queryInScope: ClyPackageScope of: { self class package }.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)