tests
testBasedOnMultipleBasis

	scope := self createSampleScope.
	scope basisObjects: #(basisObject1 basisObject2).
	self assert: scope isBasedOnMultipleBasis.

	scope basisObjects: #(basisObject).	
	self deny: scope isBasedOnMultipleBasis.
		
	scope basisObjects: #().
	self deny: scope isBasedOnMultipleBasis