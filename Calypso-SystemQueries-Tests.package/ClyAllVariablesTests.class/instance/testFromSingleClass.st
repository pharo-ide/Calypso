tests
testFromSingleClass

	| varNames |
	self queryFromScope: ClyClassScope of: ClyClass2FromP1.
	
	varNames := resultItems collect: #name as: Set.
	self 
		assert: varNames 
		equals: ClyClass2FromP1 instVarNames asSet, (ClyClass2FromP1 classVariables collect: #name)