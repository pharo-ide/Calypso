instance creation
forContentOf: itemsScopeClass builtBy: anEnvironmentQuery from: queryScope

	^self new 
		buildingQuery: anEnvironmentQuery;
		queryScope: queryScope;
		itemScope: itemsScopeClass