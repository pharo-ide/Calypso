initialization
prepareInitialState

	methodGroupQuery := ClyAllClasses 
		from: (metaLevelScope emptyIn: navigationEnvironment)
		as: ClyGroupedClassMethods new.
	self switchToPackages