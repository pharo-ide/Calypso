tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyClassWithUndeclares >> #method1WithUndeclares. 
		ClyClassWithUndeclares >> #method2WithUndeclares.
		Object >> #printString}.
	
	self assert: foundSelectors sorted asArray equals: #(method1WithUndeclares method2WithUndeclares) 