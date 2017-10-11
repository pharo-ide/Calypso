execution
fetchContent: anEnvironmentContent fromSystemEnvironment: aSystemEnvironment

	| methods |
	
	methods := self selectMethodsInClasses: aSystemEnvironment classes.
	
	anEnvironmentContent buildFromMethods: methods