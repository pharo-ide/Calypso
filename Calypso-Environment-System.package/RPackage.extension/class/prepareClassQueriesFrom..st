*Calypso-Environment-System
prepareClassQueriesFrom: packages
	^{
		ClyAllClasses from: (ClyPackageScope of: packages).
		ClyAllClasses from: (ClyPackageExtensionScope of: packages) 
	}