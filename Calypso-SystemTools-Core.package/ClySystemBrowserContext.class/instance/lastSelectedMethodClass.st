selection-methods
lastSelectedMethodClass
	| lastMethodItem |
	lastMethodItem := self lastSelectedObjectIn: self selectedMethodItems.
	^lastMethodItem systemDefinition definingClass