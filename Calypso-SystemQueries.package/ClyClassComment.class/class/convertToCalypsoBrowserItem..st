item convertation
convertToCalypsoBrowserItem: aClassComment

	| item |
	item := ClyBrowserItem named: 'Comment' with: aClassComment.
	item addProperty: (ClyClassDefinitionProperty of: aClassComment definingClass).
	^item