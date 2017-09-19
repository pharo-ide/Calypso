accessing-methods
lastSelectedMethodClass
	| lastMethodItem |
	lastMethodItem := self lastSelectedObjectIn: self selectedMethodItems.
	^(lastMethodItem getProperty: ClyDefinitionProperty) definitionClass