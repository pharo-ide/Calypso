selection-classes
lastSelectedClass
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyItemDefinitionProperty.
	^definition definingClass