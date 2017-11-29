tests
testOpeningBrowserCursor
	
	queryResult environment: ClyNavigationEnvironment new. 
	cursor := queryResult openBrowserCursor.
	
	self assert: cursor class equals: ClyBrowserQueryCursor.
	self assert: cursor queryResult equals: queryResult