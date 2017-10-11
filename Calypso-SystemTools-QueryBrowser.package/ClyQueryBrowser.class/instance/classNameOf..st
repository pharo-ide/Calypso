initialization
classNameOf: anEnvironmentItem

	| definition |
	definition := anEnvironmentItem getProperty: ClyDefinitionProperty.
	^definition definitionClassItem name