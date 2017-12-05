tests
testHasRequiredResultByDefault

	self assert: query requiredResult class equals: ClyAsyncQueryResult.
	self assert: query requiredResult actualResult class equals: ClyRawQueryResult.