running
setUp
	| query |
	super setUp.
	query := ClyQueryExampleReturningScopeBasis
		from: (ClyScopeExample ofAll: {Array. Object. String} in: environment)
		as: self createQueryResult.
	queryResult := query execute.
	itemObserver := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: itemObserver