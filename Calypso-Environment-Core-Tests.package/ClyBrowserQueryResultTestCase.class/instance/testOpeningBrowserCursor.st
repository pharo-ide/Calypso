tests
testOpeningBrowserCursor
	
	queryResult environment: ClyNavigationEnvironment new. 
	cursor := queryResult openBrowserCursor.
	
	self assert: cursor class equals: ClyBrowserItemCursor.
	self assert: cursor queryResult equals: queryResult