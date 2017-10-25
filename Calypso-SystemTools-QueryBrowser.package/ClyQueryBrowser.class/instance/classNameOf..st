initialization
classNameOf: anEnvironmentItem

	| definition |
	definition := anEnvironmentItem getProperty: ClySystemDefinitionProperty.
	^definition definitionClassItem name