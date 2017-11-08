accessing
prepareClassQueryFrom: aPackage
	^(ClyAllClasses from: (ClyPackageExtensionScope of: { aPackage }))