navigation
showQueryResult
	systemQuery isBoundToEnvironment ifFalse: [ 
		systemQuery := systemQuery withScope: self systemScope].
	(queryScopes includes: systemQuery scope) ifFalse: [ 
		queryScopes add: systemQuery scope ].	
	activeScope := systemQuery scope.	
	
	resultView showQuery: systemQuery