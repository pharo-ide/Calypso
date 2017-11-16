tests
testCheckEmptyQueryWhenThereIsNoResultButItWouldBeEmpty

	| query |
	query := self createQueryInScopeOf: #().
	
	self assert: (environment isQueryEmpty: query)