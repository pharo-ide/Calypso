tests
testMakeQueryScopeOfResultAsReadOnlyObjectWhenItIsExecuted

	| query |
	query := self createQueryFromScopeOf: self class.
	environment query: query.
	
	self assert: query scope isReadOnlyObject