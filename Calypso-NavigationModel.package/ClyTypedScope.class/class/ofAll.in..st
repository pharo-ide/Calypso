instance creation
ofAll: basisObjects in: aNavigationEnvironment

	^(self ofAll: basisObjects)
		bindTo: aNavigationEnvironment