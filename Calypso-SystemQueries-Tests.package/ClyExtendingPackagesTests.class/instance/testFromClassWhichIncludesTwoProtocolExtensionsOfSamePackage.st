tests
testFromClassWhichIncludesTwoProtocolExtensionsOfSamePackage

	self queryFromScope: ClyClassScope of: ClyClass9FromPExtendedByP5.

	self assert: resultItems asSet equals: {ClyClass7WithTag1FromP5 package} asSet