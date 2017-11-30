building
fillWith: classes
	| group actualClassScope |
	actualClassScope := self scope asScope: ClyClassScope.
	
	items := ClyHierarchicallySortedClasses buildItemsFrom: classes.
	items do: [ :each | 
		group := ClyInheritedMethodGroup 
			withMethodsOf: each actualObject toShowIn: actualClassScope.
		each actualObject: group]