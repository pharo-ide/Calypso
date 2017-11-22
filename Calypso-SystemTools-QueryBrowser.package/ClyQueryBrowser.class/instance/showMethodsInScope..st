navigation
showMethodsInScope: anEnvironmentScope
	(queryScopes includes: anEnvironmentScope) ifFalse: [ queryScopes add: anEnvironmentScope ].	
		
	self changeStateBy: [
		activeScope := anEnvironmentScope.
		systemQuery := systemQuery withScope: activeScope.
		resultView showQuery: systemQuery.
		self ensureSelectedItem]