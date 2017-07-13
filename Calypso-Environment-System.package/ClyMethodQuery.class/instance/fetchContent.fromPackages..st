execution
fetchContent: anEnvironmentContent fromPackages: packages

	| methods |
	methods := packages flatCollect: [ :each | 
		self selectMethodsInClasses: each definedClasses  ].
	
	anEnvironmentContent buildFromMethods: methods