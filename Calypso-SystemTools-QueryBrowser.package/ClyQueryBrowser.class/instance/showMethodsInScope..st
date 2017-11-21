navigation
showMethodsInScope: anEnvironmentScope
	| result newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeNavigationStateBy: [
		activeScope := anEnvironmentScope.
		systemQuery := systemQuery withNewScope: activeScope.
		newDS := ClyCollapsedDataSource on: systemQuery.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]