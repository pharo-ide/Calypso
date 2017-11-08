tests
testNotBasedOnSingleBasisWhenNoSubscopesExist
	
	scope := ClyCompositeScope of: #().
	
	self deny: scope isBasedOnSingleBasis