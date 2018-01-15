initialization
prepareInitialState

	methodGroupQuery := ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: navigationEnvironment).
	
	self switchToPackages