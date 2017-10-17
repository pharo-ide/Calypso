execution
prepareResultOn: aNavigationEnvironment inScope: anEnvironmentScope

	^(requiredResult of: aNavigationEnvironment inScope: anEnvironmentScope)
		buildingQuery: self