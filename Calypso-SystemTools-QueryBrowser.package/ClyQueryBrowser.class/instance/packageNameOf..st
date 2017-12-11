initialization
packageNameOf: aBrowserItem

	| definition |
	definition := aBrowserItem getProperty: ClyItemDefinitionProperty ifAbsent: [^''].
	^definition definingPackageItem name