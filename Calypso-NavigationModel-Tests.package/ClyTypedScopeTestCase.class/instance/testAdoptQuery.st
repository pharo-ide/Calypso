tests
testAdoptQuery
	| query adoptedQuery |
	scope := self singleScopeSample.
	query := ClyQueryExampleReturningScopeBasis new.
	
	adoptedQuery := scope adoptQuery: query.
	
	self assert: adoptedQuery == query