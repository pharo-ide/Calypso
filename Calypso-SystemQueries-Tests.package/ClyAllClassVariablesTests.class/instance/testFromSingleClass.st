tests
testFromSingleClass

	| varNames |
	self queryInScope: ClyClassScope of: {ClyClass2FromP1}.
	
	varNames := resultItems collect: #name as: Set.
	self assert: varNames equals: (ClyClass2FromP1 classVariables collect: #name as: Set)