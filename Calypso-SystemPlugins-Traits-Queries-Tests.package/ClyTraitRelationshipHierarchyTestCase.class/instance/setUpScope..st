running
setUpScope: aScope

	aScope bindTo: environment.
	query := ClyAllClasses from: aScope.
	queryResult buildingQuery: query