execution
fetchResultAs: anEnvironmentContent fromPackages: packages

	| methods |
	methods := packages flatCollect: [ :each | 
		self selectMethodsInLocalScopeOf: each definedClasses  ].
	
	anEnvironmentContent buildFromMethods: methods