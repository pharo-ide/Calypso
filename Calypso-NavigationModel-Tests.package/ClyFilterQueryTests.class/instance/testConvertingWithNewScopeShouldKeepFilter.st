tests
testConvertingWithNewScopeShouldKeepFilter
	| newScope convertedQuery |
	newScope := ClyScopeExample2 ofAll: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	self assert: convertedQuery itemFilter equals: query itemFilter