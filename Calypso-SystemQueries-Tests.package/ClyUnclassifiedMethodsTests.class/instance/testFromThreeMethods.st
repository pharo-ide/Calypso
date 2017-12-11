tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClass1FromP1 >> #tag1Method1. Object >> #printString. 
		ClyClass2FromP1 >> #instanceSideClassVar1Reader}.
	
	self assert: foundSelectors equals: #(instanceSideClassVar1Reader)