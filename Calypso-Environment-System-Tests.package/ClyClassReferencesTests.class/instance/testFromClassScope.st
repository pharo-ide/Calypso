tests
testFromClassScope

	self queryInScope: ClyLocalClassScope of: { self class }.
	
	self assert: resultItems size equals: 3.	
	self assert: foundSelectors equals: #(classSideReference1OfClass reference1OfClass reference2OfClass)