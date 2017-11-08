tests
testNotBasedOnSingleBasisWhenNoSubscopesExist
	
	scope := ClyCompositeScope on: #().
	
	self deny: scope isBasedOnSingleBasis