instance creation
forContentBuiltBy: anEnvironmentQuery from: queryScope

	^self new 
		buildingQuery: anEnvironmentQuery;
		queryScope: queryScope