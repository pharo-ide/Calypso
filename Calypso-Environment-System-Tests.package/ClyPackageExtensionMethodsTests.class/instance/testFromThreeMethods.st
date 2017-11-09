tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyClass1FromP1 >> #tag1Method1. Object >> #printString. 
		ClySubclassLOfClass0FromPExtendedByP1 >> #extentionMethodFromSubclassL.
		ClyClass9FromPExtendedByP5 >> #extentionMethodFromClass9}.
	
	self assert: foundSelectors equals: #(extentionMethodFromSubclassL)