navigation
showMethodsInScope: anEnvironmentScope
	| result newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeNavigationStateBy: [
		activeScope := anEnvironmentScope.
		result := navigationEnvironment query: systemQuery inScope: activeScope.
		newDS := ClyCollapsedDataSource on: result.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]