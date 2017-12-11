tests
testCheckEmptyQueryWhenThereIsNoResultButItWouldBeEmpty

	| query |
	query := self createQueryFromScope: ClyScopeExample empty.
	
	self assert: (environment isQueryEmpty: query)