*Calypso-SystemQueries
prepareClassQueriesFrom: packages in: aNavigationEnvironment
	^{
		ClyAllClasses from: ClyPackageScope ofAll: packages in: aNavigationEnvironment.
		ClyAllClasses from: ClyPackageExtensionScope ofAll: packages in: aNavigationEnvironment 
	}