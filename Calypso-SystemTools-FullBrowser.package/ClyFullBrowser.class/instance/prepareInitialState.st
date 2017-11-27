navigation
prepareInitialState

	methodGroupQuery := ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: navigationEnvironment).
	
	self switchToPackages.	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]