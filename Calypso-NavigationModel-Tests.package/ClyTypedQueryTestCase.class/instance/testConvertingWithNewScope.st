tests
testConvertingWithNewScope
	| newScope convertedQuery |
	newScope := ClyScopeExample2 ofAll: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery scope equals: newScope