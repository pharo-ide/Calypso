running
setUp
	| criticPlugin scope |
	super setUp.

	criticPlugin := ClyCriticEnvironmentPlugin new.
	environment addPlugin: criticPlugin.	
	critic := criticPlugin systemCritic.
	scope := ClyClassScope of: #() in: environment.	
	queryResult buildingQuery: (ClyAllProblemMethods from: scope)