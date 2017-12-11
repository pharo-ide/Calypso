tests
testCheckIfEmpty
	
	query scope: self scopeWithoutCritiques.
	self assert: query checkEmptyResult.

	query := self createQuery.		
	query scope: self scopeWithCritiques .
	self deny: query checkEmptyResult.
	
	query groupName: 'wrong group'.
	self assert: query checkEmptyResult.