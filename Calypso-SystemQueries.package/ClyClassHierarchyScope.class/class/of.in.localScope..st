instance creation
of: basisObjects in: aNavigationEnvironment localScope: aClassScopeClass
	^ (self of: basisObjects in: aNavigationEnvironment)
		localScopeClass: aClassScopeClass