tests
testFromClassScope

	self queryInScope: ClyClassScope of: { self class }.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(reference1OfVar1 reference2OfVar1)