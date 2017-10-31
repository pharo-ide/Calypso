running
setUp
	| query |
	super setUp.
	
	query := ClySimpleQueryExampleReturningScopeBasis requiredResult: self createQueryResult.
	queryResult := environment 
		query: query inScope: (ClyEnvironmentScope of: { Object. Array. String }).
	
	cursor := queryResult openBrowserCursor