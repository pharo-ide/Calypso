building
fillWithVariablesPerClass: varsPerClass

	| classItems vars declarationGroup varItem |
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarsDeclarationMethodGroup
			variables: vars declaredIn: classItem actualObject classes: self basisClasses.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | 
			varItem := each asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	].