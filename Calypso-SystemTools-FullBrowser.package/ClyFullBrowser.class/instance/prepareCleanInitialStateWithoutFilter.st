initialization
prepareCleanInitialStateWithoutFilter

	methodGroupQuery := ClyAllMethodGroups sortedFrom: (metaLevelScope emptyIn: navigationEnvironment).
	
	self switchToPackages