building
fillWith: classes
	| group actualClassScope |
	actualClassScope := self scope asScope: ClyClassScope.
	
	items := ClyHierarchicallySortedClasses buildItemsOn: classes.
	items do: [ :each | 
		group := ClyInheritedMethodGroup 
			forMethodsOf: each actualObject 
			from:  actualClassScope.
		each actualObject: group]