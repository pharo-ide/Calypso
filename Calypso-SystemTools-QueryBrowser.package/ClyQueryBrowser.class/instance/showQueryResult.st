navigation
showQueryResult
	systemQuery isBoundToEnvironment ifFalse: [ 
		systemQuery := systemScope adoptQuery: systemQuery ].
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
	activeScope := systemQuery scope.	
	
	resultView showQuery: systemQuery.
	resultView ensureSelectedItem