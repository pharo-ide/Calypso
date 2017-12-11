tests
testCheckEmptyQueryWhenThereIsNoResultButItWouldNotBeEmpty

	| query |
	query := self createQueryFromScopeOf: self class.
	
	self deny: (environment isQueryEmpty: query)