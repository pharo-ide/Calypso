navigation
showQueryResult
	| newDS |
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
		
	self changeStateBy: [
		activeScope := systemQuery scope.
		newDS := ClyCollapsedDataSource on: systemQuery.	 	
		resultView dataSource: newDS.
		self ensureSelectedItem]