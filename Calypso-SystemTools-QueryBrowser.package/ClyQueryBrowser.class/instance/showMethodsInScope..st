navigation
showMethodsInScope: anEnvironmentScope
	| newDS |
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeStateBy: [
		activeScope := anEnvironmentScope.
		systemQuery := systemQuery withScope: activeScope.
		newDS := ClyCollapsedDataSource on: systemQuery.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]