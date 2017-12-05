tests
testHasRequiredResultByDefault

	self assert: query requiredResult class equals: ClyAsyncQueryResult.
	self assert: query requiredResult actualQuery equals: query subqueries anyOne.