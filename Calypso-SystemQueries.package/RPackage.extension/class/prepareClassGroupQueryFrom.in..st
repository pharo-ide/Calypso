*Calypso-SystemQueries
prepareClassGroupQueryFrom: aPackage in: aNavigationEnvironment
	^ ClyAllClassGroups
		sortedFrom: (ClyPackageScope ofAll: {aPackage} in: aNavigationEnvironment)