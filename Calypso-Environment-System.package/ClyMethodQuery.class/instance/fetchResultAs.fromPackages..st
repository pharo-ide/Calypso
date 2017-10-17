execution
fetchResultAs: aQueryResult fromPackages: packages

	| methods |
	methods := packages flatCollect: [ :each | 
		self selectMethodsInLocalScopeOf: each definedClasses  ].
	
	aQueryResult buildFromMethods: methods