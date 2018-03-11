running
buildResultWith: objects
	
	query := ClyQueryExampleReturningScopeBasis 
		from: (ClyScopeExample ofAll: objects in: environment)
		as: self createQueryResult.
	
	queryResult := query execute