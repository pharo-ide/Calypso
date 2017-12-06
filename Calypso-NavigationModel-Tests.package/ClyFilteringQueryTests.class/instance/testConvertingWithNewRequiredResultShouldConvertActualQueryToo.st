tests
testConvertingWithNewRequiredResultShouldConvertActualQueryToo

	| newResult convertedQuery |
	newResult := ClyRawQueryResult new.
	convertedQuery := query withResult: newResult.
	
	self assert: (convertedQuery subqueries allSatisfy: [:each | each requiredResult == newResult])