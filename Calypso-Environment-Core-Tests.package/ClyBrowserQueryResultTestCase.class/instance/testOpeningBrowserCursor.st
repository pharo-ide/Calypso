tests
testOpeningBrowserCursor
	
	cursor := queryResult openBrowserCursor.
	
	self assert: cursor class equals: ClyBrowserQueryCursor.
	self assert: cursor observedContent equals: queryResult.