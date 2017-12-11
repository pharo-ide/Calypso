tests
testFromThreeClasses
	query tag: #Tag1.
	
	self queryFromScope: ClyClassScope ofAll: {
		ClyClass6UntaggedFromP5. ClyClass7WithTag1FromP5. ClyClass8WithTag2FromP5 }.

	self assert: resultItems asArray equals: {ClyClass7WithTag1FromP5}