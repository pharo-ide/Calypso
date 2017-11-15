building
fillWith: classes
	| group actualClassScope |
	actualClassScope := self scope asScope: ClyClassScope.
	
	items := ClyHierarchicallySortedClasses buildItemsOn: classes.
	items do: [ :each | 
		group := ClyVisibilityMethodGroup forScope: actualClassScope toShow: each actualObject.
		each actualObject: group]