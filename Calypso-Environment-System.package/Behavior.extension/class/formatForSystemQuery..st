*Calypso-Environment-System
formatForSystemQuery: aClass

	| item |
	item := ClyFormattedResultItem named: aClass name with: aClass.
	item addProperty: (ClyClassDefinitionProperty of: aClass).
	^item