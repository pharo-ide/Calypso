navigation
showQueryResult
	| result newDS |
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
		
	self changeNavigationStateBy: [
		activeScope := systemQuery scope.
		result := navigationEnvironment query: systemQuery.
		newDS := ClyCollapsedDataSource on: result.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]