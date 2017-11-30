building
fillWithVariables: varsPerClass type: varTypeClass

	| classMap vars declarationGroup varItem methodQueryScope |
	methodQueryScope := self queryScope asScope: ClyClassScope.
	classMap := ClySubclassHierarchy buildFrom: varsPerClass keys.
	classMap doInOrder: [ :eachClass |
		vars := varsPerClass at: eachClass.
		declarationGroup := ClyVarDefinitionMethodGroup
			withMethodsFrom: methodQueryScope 
			referencedAny: varTypeClass definedIn: eachClass.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup withMethodsFrom: methodQueryScope referencedVar: each.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]