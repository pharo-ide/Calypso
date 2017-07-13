public
lastSelectedPackage
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyMethodDefinitionProperty.
	^definition definitionPackage