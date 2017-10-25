formatting items
formatForSystemQuery: aMethod

	| item |
	item := ClyFormattedResultItem named: aMethod selector with: aMethod.
	item addProperty: (ClyMethodDefinitionProperty of: aMethod).
	^item