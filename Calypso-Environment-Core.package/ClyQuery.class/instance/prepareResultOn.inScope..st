execution
prepareResultOn: aNavigationEnvironment inScope: anEnvironmentScope

	^(requiredResult prepareNewOf: aNavigationEnvironment inScope: anEnvironmentScope)
		buildingQuery: self