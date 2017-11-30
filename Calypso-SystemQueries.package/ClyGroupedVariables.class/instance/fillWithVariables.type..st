building
fillWithVariables: varsPerClass type: varTypeClass

	| classItems vars declarationGroup varItem methodQueryScope |
	methodQueryScope := self queryScope asScope: ClyClassScope.
	classItems := ClyHierarchicallySortedClasses buildItemsFrom: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarDefinitionMethodGroup
			withMethodsFrom: methodQueryScope 
			referencedAny: varTypeClass definedIn: classItem actualObject.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup withMethodsFrom: methodQueryScope referencedVar: each.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]