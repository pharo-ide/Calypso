tests
testFromTwoMethods
	self installCounterInto: #methodWithCounter.
	self queryFromScope: ClyMethodScope ofAll: {
		self class >> #methodWithCounter. 
		self class >> #methodWithoutCounter}.
	
	self assert: foundSelectors sorted asArray equals: #(#methodWithCounter) 