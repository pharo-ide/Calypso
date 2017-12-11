tests
testBindToEnvironment

	scope := self createSampleScope.

	scope bindTo: environment.
	
	self assert: scope environment equals: environment.
	self assert: scope isBoundToEnvironment