selection-methods
lastSelectedMethodClass
	| lastMethodItem |
	lastMethodItem := self lastSelectedObjectIn: self selectedMethodItems.
	^(lastMethodItem getProperty: ClyItemDefinitionProperty) definingClass