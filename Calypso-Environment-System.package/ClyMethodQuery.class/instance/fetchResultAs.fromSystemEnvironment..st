execution
fetchResultAs: aQueryResult fromSystemEnvironment: aSystemEnvironment

	| methods |
	
	methods := self selectMethodsInLocalScopeOf: aSystemEnvironment classes.
	
	aQueryResult buildOn: methods