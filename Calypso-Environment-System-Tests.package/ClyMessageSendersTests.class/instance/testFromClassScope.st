tests
testFromClassScope

	| allMethods selectors |
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { self class}.
	
	selectors := allMethods collect: #selector as: Array.
	
	self assert: selectors equals: #(classSideSender1OfMessage1 classSideSender2OfMessage1 
		sender1OfMessage1 sender2OfMessage1)
	