instance creation
of: basisObjects in: aNavigationEnvironment localScope: aClassScopeClass
	^ (self ofAll: basisObjects in: aNavigationEnvironment)
		localClassScope: aClassScopeClass