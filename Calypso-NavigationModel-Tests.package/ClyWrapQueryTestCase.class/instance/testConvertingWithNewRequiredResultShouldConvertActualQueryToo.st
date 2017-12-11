tests
testConvertingWithNewRequiredResultShouldConvertActualQueryToo

	| newResult convertedQuery |
	newResult := ClyRawQueryResult new.
	convertedQuery := query withResult: newResult.
	
	self assert: convertedQuery actualQuery requiredResult == newResult