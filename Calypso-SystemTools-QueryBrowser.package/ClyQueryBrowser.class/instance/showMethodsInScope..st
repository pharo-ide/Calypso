navigation
showMethodsInScope: aScope
	(queryScopes includes: aScope) ifFalse: [ queryScopes add: aScope ].	
		
	self changeStateBy: [
		activeScope := aScope.
		systemQuery := systemQuery withScope: activeScope.
		resultView showQuery: systemQuery.
		self ensureSelectedItem]