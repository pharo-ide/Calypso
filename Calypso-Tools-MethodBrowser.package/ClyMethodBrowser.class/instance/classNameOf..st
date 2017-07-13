initialization
classNameOf: methodItem

	| definition |
	definition := methodItem getProperty: ClyMethodDefinitionProperty.
	^definition printDefinitionItem