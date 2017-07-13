execution
fetchContent: anEnvironmentContent fromSystems: systemEnvironments

	| methods |
	
	methods := systemEnvironments flatCollect: [ :each | 
		self selectMethodsInClasses: each classes  ].
	
	anEnvironmentContent buildFromMethods: methods