item convertation
convertToCalypsoBrowserItem: aMethod

	| item |
	item := super convertToCalypsoBrowserItem: aMethod.
	item addProperty: (ClyMethodDefinitionProperty of: aMethod).
	^item