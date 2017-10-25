selection-packages
lastSelectedPackage
	
	| definition |
	definition := self lastSelectedItem getProperty: ClySystemDefinitionProperty.
	^definition definitionPackage