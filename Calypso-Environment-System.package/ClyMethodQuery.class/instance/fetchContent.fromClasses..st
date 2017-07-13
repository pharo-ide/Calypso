execution
fetchContent: anEnvironmentContent fromClasses: classes

	| methods |
	methods := self selectMethodsInClasses: classes.
	
	anEnvironmentContent buildFromMethods: methods