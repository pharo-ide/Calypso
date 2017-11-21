running
setUp
	| query |
	super setUp.
	
	query := ClyQueryExampleReturningScopeBasis 
		from: (ClyScopeExample of: { Object. Array. String } in: environment)
		as: self createQueryResult.
		
	queryResult := query execute.	
	cursor := queryResult openBrowserCursor