tests
testBasedOnSingleBasis

	scope := self createSampleScope.
	scope basisObjects: #(basisObject).
	self assert: scope isBasedOnSingleBasis.

	scope basisObjects: #(basisObject1 basisObject2).
	self deny: scope isBasedOnSingleBasis.
		
	scope basisObjects: #().
	self deny: scope isBasedOnSingleBasis