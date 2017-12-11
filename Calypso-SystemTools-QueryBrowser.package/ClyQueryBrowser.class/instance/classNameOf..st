initialization
classNameOf: aBrowserItem

	| definition |
	definition := aBrowserItem getProperty: ClyItemDefinitionProperty ifAbsent: [^''].
	^definition definingClassItem name