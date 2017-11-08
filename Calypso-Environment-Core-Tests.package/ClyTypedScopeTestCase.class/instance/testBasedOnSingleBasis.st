tests
testBasedOnSingleBasis

	scope := self singleScopeSample.
	self assert: scope isBasedOnSingleBasis.

	scope := self multipleScopeSample.
	self deny: scope isBasedOnSingleBasis.
		
	scope := self emptyScopeSample.
	self deny: scope isBasedOnSingleBasis