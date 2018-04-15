building
fillWithVariables: varsPerClass type: varTypeClass

	| classMap vars declarationGroup varItem methodQueryScope |
	methodQueryScope := self queryScope asLocalClassScope.
	classMap := hierarchy buildFrom: varsPerClass keys.
	classMap doInOrder: [ :eachClass |
		vars := varsPerClass at: eachClass.
		declarationGroup := ClyVariableGroupItem
			withMethodsFrom: methodQueryScope 
			referencedAny: varTypeClass definedIn: eachClass.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each | | varGroup |
			varGroup := ClyVariableMethodGroup withMethodsFrom: methodQueryScope referencedVar: each.
			varItem := varGroup asCalypsoBrowserItem.
			varItem depth: 1.
			items add: varItem] 
	]