*Calypso-Environment-System
formatForSystemQuery: aClass

	| item |
	item := ClyBrowserItem named: aClass name with: aClass.
	item addProperty: (ClyClassDefinitionProperty of: aClass).
	^item