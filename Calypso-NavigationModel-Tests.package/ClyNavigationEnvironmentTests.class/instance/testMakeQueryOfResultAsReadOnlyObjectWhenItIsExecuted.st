tests
testMakeQueryOfResultAsReadOnlyObjectWhenItIsExecuted

	| query |
	query := self createQueryFromScopeOf: self class.
	environment query: query.
	
	self assert: query isReadOnlyObject