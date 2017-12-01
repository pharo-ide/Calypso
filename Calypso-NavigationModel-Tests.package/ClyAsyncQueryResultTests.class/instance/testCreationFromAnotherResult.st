tests
testCreationFromAnotherResult

	| actualResult |
	actualResult := ClyRawQueryResult new.
	queryResult := actualResult asAsyncResult.
	
	self assert: queryResult class equals: ClyAsyncQueryResult.
	self assert: queryResult actualResult == actualResult