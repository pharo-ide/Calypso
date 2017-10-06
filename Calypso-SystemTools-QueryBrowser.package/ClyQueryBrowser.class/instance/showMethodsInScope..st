navigation
showMethodsInScope: anEnvironmentScope
	| cursor newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeNavigationStateBy: [
		activeScope := anEnvironmentScope.
		cursor := navigationEnvironment query: systemQuery inScope: activeScope.
		newDS := ClyCollapsedDataSource on: cursor.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]