tests
testConvertingWithNewScopeWhenAllSubqueriesAreSameKind
	| newScope convertedQuery |
	newScope := ClyScopeExample2 of: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	
	self assert: convertedQuery class equals: ClyQueryExampleReturningScopeBasis.
	self assert: convertedQuery scope equals: newScope.
	self assert: convertedQuery requiredResult == query requiredResult