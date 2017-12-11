instance creation
ofAll: basisObjects in: aNavigationEnvironment localScope: aClassScopeClass
	^ (self ofAll: basisObjects in: aNavigationEnvironment)
		localClassScope: aClassScopeClass