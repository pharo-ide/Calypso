running
setUp
	| query |
	super setUp.
	
	query := ClyQueryExampleReturningScopeBasis requiredResult: self createQueryResult.
	queryResult := environment 
		query: query inScope: (ClyScopeExample of: { Object. Array. String }).
	
	cursor := queryResult openBrowserCursor