tests
testIsBasedOnEmptyBasisWhenNoSubscopesExist
	
	scope := ClyCompositeScope on: #().
	
	self assert: scope isBasedOnEmptyBasis