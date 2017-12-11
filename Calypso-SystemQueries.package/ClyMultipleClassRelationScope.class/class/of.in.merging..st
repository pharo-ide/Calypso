instance creation
of: basisObjects in: aNavigationEnvironment merging: singleRelationScopeClasses
	^(self ofAll: basisObjects in: aNavigationEnvironment)
		relationScopeClasses: singleRelationScopeClasses