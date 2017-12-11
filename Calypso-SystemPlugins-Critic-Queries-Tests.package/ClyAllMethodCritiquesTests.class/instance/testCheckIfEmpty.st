tests
testCheckIfEmpty
		
	query scope: self scopeWithCritiques .
	self deny: query checkEmptyResult.
	
	query scope: self scopeWithoutCritiques.
	self assert: query checkEmptyResult.