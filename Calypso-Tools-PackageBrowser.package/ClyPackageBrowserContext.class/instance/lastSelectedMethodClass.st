public
lastSelectedMethodClass
	
	| definition |
	definition := self lastSelectedItem getProperty: ClyMethodDefinitionProperty.
	^definition definitionClass