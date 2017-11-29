tests
testConvertingWithNewScopeWhenThereIsExtraQueryParameter
	| newScope convertedQuery |
	query extraParameter: #testParameter.
	
	newScope := ClyScopeExample2 of: #(someBasis) in: environment.
	convertedQuery := query withScope: newScope.
	
	self assert: convertedQuery extraParameter equals: #testParameter.