tests
testCheckEmptyQueryWhenThereIsEmptyResult

	| query result |
	query := self createQueryFromScope: ClyScopeExample empty.
	result := environment query: query.
	self assert: result items isEmpty.
	
	self assert: (environment isQueryEmpty: query)