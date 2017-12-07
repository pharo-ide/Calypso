tests
testFromSingleClass

	self queryFromScope: ClyClassScope of: ClySubclassLOfClass0FromPExtendedByP1.

	self assert: resultItems asSet equals: {ClyClass1FromP1 package} asSet