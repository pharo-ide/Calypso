tests
testCheckEmptyQueryWhenThereIsNoResultButItWouldNotBeEmpty

	| query |
	query := self createQueryInScopeOf: {self class}.
	
	self deny: (environment isQueryEmpty: query)