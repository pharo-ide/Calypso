formatting items
formatForSystemQuery: aMethod

	| item |
	item := ClyBrowserItem named: aMethod selector with: aMethod.
	item addProperty: (ClyMethodDefinitionProperty of: aMethod).
	^item