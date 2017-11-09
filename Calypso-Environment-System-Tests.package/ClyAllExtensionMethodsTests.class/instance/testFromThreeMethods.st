tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyClass1FromP1 >> #tag1Method1. Object >> #printString. 
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL}.
	
	self assert: foundSelectors equals: #(extentionMethodFromSubclassL)