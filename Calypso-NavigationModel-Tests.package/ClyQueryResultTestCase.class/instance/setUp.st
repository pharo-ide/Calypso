running
setUp
	super setUp.
	
	query := self createQuery.
	
	queryResult := self createQueryResult.
	queryResult buildingQuery: query.
	queryResult initializeItems.
	