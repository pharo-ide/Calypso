tests
testCheckEmptyQueryWhenThereIsNotEmptyResult

	| query result |
	query := self createQueryFromScopeOf: self class.
	result := environment query: query.
	self assert: result items notEmpty.
	
	self deny: (environment isQueryEmpty: query)