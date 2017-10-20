tests
testShouldBeCached

	| result0 |
	self queryInScope: ClyPackageScope of: { self class package}.
	result0 := result.
	query := self createQuery.
	self queryInScope: ClyPackageScope of: { self class package}.
	
	self assert: result0 == result