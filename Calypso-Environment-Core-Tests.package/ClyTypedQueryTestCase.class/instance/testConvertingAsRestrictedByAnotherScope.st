tests
testConvertingAsRestrictedByAnotherScope
	| newScope convertedQuery |
	newScope := ClyScopeExample2 of: #(newBasis) in: environment.
	convertedQuery := query restrictedByScope: newScope.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery scope class equals: query scope class.
	self assert: convertedQuery scope basisObjects equals: #(newBasis) asSet