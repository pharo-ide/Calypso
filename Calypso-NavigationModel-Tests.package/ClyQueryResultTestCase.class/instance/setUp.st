running
setUp
	super setUp.
	
	query := self createQuery.
	
	queryResult := self createQueryResult prepareNewFor: query in: environment.
	queryResult initializeItems
	