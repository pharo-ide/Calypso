running
setUp
	| query |
	super setUp.
	
	query := ClyQueryExampleReturningScopeBasis 
		from: (ClyScopeExample of: { Array. Object. String } in: environment)
		as: self createQueryResult.
		
	queryResult := query execute.
	itemObserver := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: itemObserver