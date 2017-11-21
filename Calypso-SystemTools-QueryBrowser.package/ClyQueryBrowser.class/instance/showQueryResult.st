navigation
showQueryResult
	| result newDS |
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
		
	self changeNavigationStateBy: [
		activeScope := systemQuery scope.
		newDS := ClyCollapsedDataSource on: systemQuery.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]