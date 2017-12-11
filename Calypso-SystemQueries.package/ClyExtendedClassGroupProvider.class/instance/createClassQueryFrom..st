enumerating
createClassQueryFrom: aPackageScope
	^ClyAllClasses from: (aPackageScope asScope: ClyPackageExtensionScope)