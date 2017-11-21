*Calypso-Environment-System
prepareClassGroupQueryFrom: aPackage in: aNavigationEnvironment
	^ClyAllClassGroups 
		sortedFrom: (ClyPackageScope of: {aPackage} in: aNavigationEnvironment)