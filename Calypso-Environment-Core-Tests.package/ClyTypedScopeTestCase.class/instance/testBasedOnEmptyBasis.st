tests
testBasedOnEmptyBasis

	scope := self multipleScopeSample.
	self deny: scope isBasedOnEmptyBasis.

	scope := self singleScopeSample.
	self deny: scope isBasedOnEmptyBasis.
	
	scope := self emptyScopeSample.
	self assert: scope isBasedOnEmptyBasis