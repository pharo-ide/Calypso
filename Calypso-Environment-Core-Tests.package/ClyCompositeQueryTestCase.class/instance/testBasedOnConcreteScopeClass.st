tests
testBasedOnConcreteScopeClass

	self assert: (query isBasedOnScopeClass: ClyScopeExample).
	self assert: (query isBasedOnScopeClass: ClyScope).
	
	self deny: (query isBasedOnScopeClass: Array).