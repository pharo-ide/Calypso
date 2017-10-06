selection-classes
lastSelectedClass
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyDefinitionProperty.
	^definition definitionClass