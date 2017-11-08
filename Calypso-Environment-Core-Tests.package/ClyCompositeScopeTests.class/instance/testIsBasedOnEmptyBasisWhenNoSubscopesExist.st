tests
testIsBasedOnEmptyBasisWhenNoSubscopesExist
	
	scope := ClyCompositeScope of: #().
	
	self assert: scope isBasedOnEmptyBasis