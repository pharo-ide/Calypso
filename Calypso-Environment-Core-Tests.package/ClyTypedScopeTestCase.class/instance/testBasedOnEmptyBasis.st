tests
testBasedOnEmptyBasis

	scope := self createSampleScope.
	scope basisObjects: #(basisObject).
	self deny: scope isBasedOnEmptyBasis.
	
	scope basisObjects: #().
	self assert: scope isBasedOnEmptyBasis