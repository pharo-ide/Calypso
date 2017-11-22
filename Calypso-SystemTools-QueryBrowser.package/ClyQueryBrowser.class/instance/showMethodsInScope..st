navigation
showMethodsInScope: anEnvironmentScope
	| newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeStateBy: [
		activeScope := anEnvironmentScope.
		systemQuery := systemQuery withNewScope: activeScope.
		newDS := ClyCollapsedDataSource on: systemQuery.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]