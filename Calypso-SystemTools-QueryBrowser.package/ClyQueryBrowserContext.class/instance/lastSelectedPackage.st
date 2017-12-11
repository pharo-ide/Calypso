selection-packages
lastSelectedPackage
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyItemDefinitionProperty.
	^definition definingPackage