building
fillWithVariables: varsPerClass type: varTypeClass

	| classMap vars declarationGroup varItem methodQueryScope methodQuery |
	methodQueryScope := self queryScope asLocalClassScope.
	classMap := hierarchy buildFrom: varsPerClass keys.
	classMap doInOrder: [ :eachClass |
		vars := varsPerClass at: eachClass.
		declarationGroup := ClyVariableGroupItem
			withMethodsFrom: methodQueryScope 
			referencedAny: varTypeClass definedIn: eachClass.
		items add: declarationGroup asCalypsoBrowserItem.
		vars do: [:each |
			methodQuery := ClyVariableReferences of: {each} from: methodQueryScope.
			varItem := each asCalypsoBrowserItem.
			varItem addChildren: ClyChildrenMethods with: methodQuery.
			varItem depth: 1.
			items add: varItem] 
	]