selection-classes
lastSelectedClass
	
	| definition |
	definition := self lastSelectedItem getProperty: ClySystemDefinitionProperty.
	^definition definitionClass