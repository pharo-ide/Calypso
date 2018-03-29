item convertation
convertToCalypsoBrowserItem: aClass

	| item |
	item := super convertToCalypsoBrowserItem: aClass.
	item addProperty: (ClyClassDefinitionProperty of: aClass).
	^item