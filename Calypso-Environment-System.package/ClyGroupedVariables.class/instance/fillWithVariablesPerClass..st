building
fillWithVariablesPerClass: varsPerClass

	| classItems vars declarationGroup varItem |
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarsDeclarationMethodGroup
			variables: vars declaredIn: classItem actualObject classes: self queryScope.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup classes: self queryScope variable: each.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]