item convertation
convertToCalypsoBrowserItem: aClassComment

	| item |
	item := super convertToCalypsoBrowserItem: aClassComment.
	item addProperty: (ClyClassDefinitionProperty of: aClassComment definingClass).
	^item