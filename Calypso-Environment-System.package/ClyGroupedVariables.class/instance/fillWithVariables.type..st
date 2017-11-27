building
fillWithVariables: varsPerClass type: varTypeClass

	| classItems vars declarationGroup varItem methodQueryScope |
	methodQueryScope := self queryScope asScope: ClyClassScope.
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarDefinitionMethodGroup
			for: varTypeClass definedIn: classItem actualObject from: methodQueryScope.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup variable: each from: methodQueryScope.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]