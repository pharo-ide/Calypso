tests
testFromTwoMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithFFIMethods >> #ffiMethod. 
		ClyClassWithFFIMethods >> #notFFIMethod}.
	
	self assert: foundSelectors sorted asArray equals: #(ffiMethod)