tests
testIsBasedOnConcreteScopeClass

	self assert: (query isBasedOnScopeClass: ClyScope).
	self assert: (query isBasedOnScopeClass: Object).
	
	self deny: (query isBasedOnScopeClass: Array).