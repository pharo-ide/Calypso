*Calypso-Environment-System
prepareClassQueryFrom: aPackage
	^(ClyAllClasses from: (ClyPackageScope of: { aPackage }))
		, (ClyAllClasses from: (ClyPackageExtensionScope of: { aPackage }))