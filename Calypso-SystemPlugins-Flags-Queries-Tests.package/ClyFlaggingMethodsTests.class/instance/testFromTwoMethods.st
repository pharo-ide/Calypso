tests
testFromTwoMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithFlags >> #methodWithFlag. 
		ClyClassWithFlags >> #methodWithoutFlag}.
	
	self assert: foundSelectors sorted asArray equals: #(methodWithFlag)