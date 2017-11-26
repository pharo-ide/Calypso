navigation
showEnvironment: aNavigationEnvironment

	navigationEnvironment := aNavigationEnvironment.
	methodGroupQuery := ClyAllMethodGroups sortedFrom: (metaLevelScope of: #() in: navigationEnvironment).

	self switchToPackages.
	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]