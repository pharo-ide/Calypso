tests
testFromThreeClasses
	
	self queryInScope: ClyClassScope of: {
		ClyClass7WithTag1FromP5. ClyClass6UntaggedFromP5. ClyClass1FromP1 }.

	self assert: resultItems asSet equals: {ClyClass6UntaggedFromP5. ClyClass1FromP1} asSet