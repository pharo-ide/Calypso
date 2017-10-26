tests
testFromSingleClass

	self queryInScope: ClyClassScope of: {ClyClass1FromP1}.
	
	self 
		assert: (resultItems collect: #name as: Set)
		equals: ClyClass1FromP1 instVarNames asSet