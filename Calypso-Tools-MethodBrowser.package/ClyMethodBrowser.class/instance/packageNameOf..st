initialization
packageNameOf: methodItem

	| definition |
	definition := methodItem getProperty: ClyMethodDefinitionProperty.
	^definition packageItem name