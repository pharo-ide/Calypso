running
setUpScope: aScope

	| query |
	query := ClyAllClasses from: aScope.
	queryResult buildingQuery: query