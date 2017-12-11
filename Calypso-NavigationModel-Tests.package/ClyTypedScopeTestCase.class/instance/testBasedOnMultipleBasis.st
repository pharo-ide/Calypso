tests
testBasedOnMultipleBasis

	scope := self multipleScopeSample.
	self assert: scope isBasedOnMultipleBasis.

	scope := self singleScopeSample.
	self deny: scope isBasedOnMultipleBasis.
		
	scope := self emptyScopeSample.
	self deny: scope isBasedOnMultipleBasis