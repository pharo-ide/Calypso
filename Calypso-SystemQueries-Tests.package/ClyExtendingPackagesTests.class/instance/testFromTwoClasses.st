tests
testFromTwoClasses

	self queryInScope: ClyClassScope of: {
		ClyClass9FromPExtendedByP5. ClySubclassLOfClass0FromPExtendedByP1 }.

	self assert: resultItems asSet equals: {ClyClass1FromP1 package. ClyClass7WithTag1FromP5 package} asSet