browser item preparation
convertToCalypsoBrowserItem: aMethod

	| item |
	item := ClyBrowserItem named: aMethod selector with: aMethod.
	item addProperty: (ClyMethodDefinitionProperty of: aMethod).
	^item