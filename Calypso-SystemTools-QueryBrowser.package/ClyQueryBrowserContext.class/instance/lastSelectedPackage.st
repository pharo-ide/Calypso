selection-packages
lastSelectedPackage
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyDefinitionProperty.
	^definition definitionPackage