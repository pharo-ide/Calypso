tests
testConvertingWithNewRequiredResult

	| newResult convertedQuery |
	newResult := ClyRawQueryResult new.
	convertedQuery := query withResult: newResult.
	
	self assert: convertedQuery class equals: query class.
	self assert: convertedQuery scope equals: query scope.
	self assert: convertedQuery requiredResult == newResult