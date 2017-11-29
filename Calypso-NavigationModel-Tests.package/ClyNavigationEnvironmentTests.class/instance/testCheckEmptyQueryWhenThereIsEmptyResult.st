tests
testCheckEmptyQueryWhenThereIsEmptyResult

	| query result |
	query := self createQueryInScopeOf: #().
	result := environment query: query.
	self assert: result items isEmpty.
	
	self assert: (environment isQueryEmpty: query)