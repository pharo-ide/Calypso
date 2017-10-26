building
fillWithVariablesPerClass: varsPerClass

	| classItems vars declarationGroup varItem |
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarsDeclarationMethodGroup
			variables: vars declaredIn: classItem actualObject classes: self basisClasses.
		items add: declarationGroup asEnvironmentItem.
		vars do: [:each | 
			varItem := each asEnvironmentItem.
			varItem depth: 1.
			items add: varItem] 
	].