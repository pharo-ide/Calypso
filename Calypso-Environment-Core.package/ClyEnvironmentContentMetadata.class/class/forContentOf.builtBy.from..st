instance creation
forContentOf: itemsScopeClass builtBy: anEnvironmentQuery from: queryScope

	^self new 
		itemScope: itemsScopeClass;
		buildingQuery: anEnvironmentQuery;
		queryScope: queryScope class;
		queryScopeSize: queryScope basisSize