execution
fetchResultAs: aQueryResult fromLocalScopeOfClasses: classes

	| methods |
	methods := self selectMethodsInLocalScopeOf: classes.
	
	aQueryResult buildOn: methods