tests
testAdoptQueryShouldKeepScopeName
	| query adoptedQuery |
	scope := ClyCompositeScope on: {
		ClyScopeExample of: Object in: environment.
		ClyScopeExample2 of: Array in: environment}.
	scope name: 'test scope'.
	query := ClyQueryExampleReturningScopeBasis new.
	
	adoptedQuery := scope adoptQuery: query.
	
	self assert: adoptedQuery scope name equals: 'test scope'