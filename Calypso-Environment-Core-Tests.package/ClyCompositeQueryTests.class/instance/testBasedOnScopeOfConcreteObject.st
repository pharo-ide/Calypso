tests
testBasedOnScopeOfConcreteObject

	self assert: (query isBasedOnScopeOf: self class).
	
	self deny: (query isBasedOnScopeOf: Array)
	