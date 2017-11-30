building
fillWith: classes
	| group actualClassScope classMap item |
	actualClassScope := self scope asScope: ClyClassScope.
	
	classMap := ClySubclassHierarchy buildFrom: classes.
	classMap doInOrderWithDepth: [ :each :depth | 
		group := ClyInheritedMethodGroup 
			withMethodsOf: each toShowIn: actualClassScope.
		item := group asCalypsoBrowserItem.
		item depth: depth.
		items add: item]