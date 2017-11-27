navigation
prepareInitialState

	methodGroupQuery := ClyAllMethodGroups sortedFrom: (metaLevelScope in: navigationEnvironment).
	
	self switchToPackages.	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]