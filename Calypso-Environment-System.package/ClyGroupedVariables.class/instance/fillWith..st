building
fillWith: variables

	| varsPerClass classItems vars declarationGroup varItem |
	items add: (ClyInheritedMethodGroup classes: environmentScope basisObjects) asEnvironmentItem.
	varsPerClass := self groupInstVarsPerClassFrom: variables.
	(variables size = (varsPerClass sumNumbers: #size)) ifFalse: [ 
		 items add: (ClyClassVariablesMethodGroup classes: environmentScope basisObjects) asEnvironmentItem].
	classItems := ClyHierarchicallySortedClasses buildItemsOn: varsPerClass keys.
	
	classItems do: [ :classItem |
		vars := varsPerClass at: classItem actualObject.
		declarationGroup := ClyVarsDeclarationMethodGroup
			variables: vars declaredIn: classItem actualObject classes: environmentScope basisObjects.
		items add: declarationGroup asEnvironmentItem.
		vars do: [:each | 
			varItem := each asEnvironmentItem.
			varItem depth: 1.
			items add: varItem] 
	].