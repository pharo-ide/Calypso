navigation
showQueryResult
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
		
	self changeStateBy: [
		activeScope := systemQuery scope.	
		resultView showQuery: systemQuery.
		self ensureSelectedItem]