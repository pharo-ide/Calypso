*Calypso-SystemQueries
prepareClassQueriesFrom: packages in: aNavigationEnvironment
	^{
		ClyAllClasses from: ClyPackageScope of: packages in: aNavigationEnvironment.
		ClyAllClasses from: ClyPackageExtensionScope of: packages in: aNavigationEnvironment 
	}