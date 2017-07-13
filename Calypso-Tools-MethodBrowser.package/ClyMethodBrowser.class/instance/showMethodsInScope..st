navigation
showMethodsInScope: anEnvironmentScope
	| cursor newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeNavigationStateBy: [
		activeScope := anEnvironmentScope.
		cursor := navigationEnvironment query: methodQuery inScope: activeScope.
		newDS := ClyCollapsedDataSource on: cursor.	 	
		methodView dataSource: newDS.
		self ensureSelectedMethod]