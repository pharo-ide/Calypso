execution
prepareResultOn: aNavigationEnvironment inScope: anEnvironmentScope

	^(requestedContent of: aNavigationEnvironment inScope: anEnvironmentScope)
		buildingQuery: self