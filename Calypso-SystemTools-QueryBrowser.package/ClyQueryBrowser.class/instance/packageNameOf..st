initialization
packageNameOf: anEnvironmentItem

	| definition |
	definition := anEnvironmentItem getProperty: ClyDefinitionProperty.
	^definition definitionPackageItem name