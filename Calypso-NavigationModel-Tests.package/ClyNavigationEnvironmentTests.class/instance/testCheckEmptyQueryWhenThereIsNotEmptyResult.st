tests
testCheckEmptyQueryWhenThereIsNotEmptyResult

	| query result |
	query := self createQueryInScopeOf: {self class}.
	result := environment query: query.
	self assert: result items notEmpty.
	
	self deny: (environment isQueryEmpty: query)