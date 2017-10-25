initialization
packageNameOf: anEnvironmentItem

	| definition |
	definition := anEnvironmentItem getProperty: ClySystemDefinitionProperty.
	^definition definitionPackageItem name