running
setUp
	| scope |
	super setUp.

	scope := ClyClassScope of: #() in: environment.	
	queryResult buildingQuery: (ClyAllProblemMethods from: scope)