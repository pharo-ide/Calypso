tests
testBasedOnScopeOfConcreteObject

	self assert: (query executesFromScopeOf: self class).
	
	self deny: (query executesFromScopeOf: Array)
	