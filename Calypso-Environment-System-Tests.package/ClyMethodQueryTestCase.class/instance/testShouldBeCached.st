tests
testShouldBeCached

	| resultContent0 |
	self executeQueryInScope: ClyPackageScope of: { self class package}.
	resultContent0 := resultContent.
	query := self createQuery.
	self executeQueryInScope: ClyPackageScope of: { self class package}.
	
	self assert: resultContent0 == resultContent