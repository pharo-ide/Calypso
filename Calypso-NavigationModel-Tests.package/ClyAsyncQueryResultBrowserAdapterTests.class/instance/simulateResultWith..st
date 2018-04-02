running
simulateResultWith: actualItems

	query := ClyConstantQuery returning: actualItems.
	query scope: (ClyScopeExample of: #someBasis in: environment). 
	query := ClyAsyncQuery for: query.
	query asyncResult: self createQueryResult.
	queryResult := query execute