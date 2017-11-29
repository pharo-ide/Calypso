navigation
showQueryResult
	systemQuery isBoundToEnvironment ifFalse: [ 
		systemQuery := self systemScope adoptQuery: systemQuery ].
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
	activeScope := systemQuery scope.	
	
	resultView showQuery: systemQuery.
	resultView ensureSelectedItem