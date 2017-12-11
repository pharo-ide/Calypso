tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClass1FromP1 >> #tag1Method1. Object >> #printString. 
		ClySubclassLOfClass0FromPExtendedByP1 >> #extensionMethodFromSubclassL}.
	
	self assert: foundSelectors equals: #(#extensionMethodFromSubclassL)