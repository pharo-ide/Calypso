tests
testAdoptQuery
	| query adoptedQuery |
	scope := self createSampleScope.
	query := ClyQueryExampleReturningScopeBasis new.
	
	adoptedQuery := scope adoptQuery: query.
	
	self assert: adoptedQuery == query