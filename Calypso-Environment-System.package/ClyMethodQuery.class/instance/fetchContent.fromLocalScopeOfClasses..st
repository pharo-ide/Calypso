execution
fetchContent: anEnvironmentContent fromLocalScopeOfClasses: classes

	| methods |
	methods := self selectMethodsInLocalScopeOf: classes.
	
	anEnvironmentContent buildFromMethods: methods