execution
fetchContent: anEnvironmentContent fromSystemEnvironment: aSystemEnvironment

	| methods |
	
	methods := self selectMethodsInLocalScopeOf: aSystemEnvironment classes.
	
	anEnvironmentContent buildFromMethods: methods