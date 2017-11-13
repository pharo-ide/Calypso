running
setUp
	| criticPlugin environment scope |
	super setUp.

	criticPlugin := ClyCriticEnvironmentPlugin new.
	environment := ClyNavigationEnvironment new.
	environment addPlugin: criticPlugin.	
	critic := criticPlugin systemCritic.
	scope := ClyClassScope of: #() in: environment.	
	queryResult buildingQuery: (ClyAllProblemMethods from: scope)