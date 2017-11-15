building
fillWith: classes
	| group |
	items := ClyHierarchicallySortedClasses buildItemsOn: classes.
	items do: [ :each | 
		group := ClySuperclassMethodGroup classes: self scope superclass: each actualObject.
		each actualObject: group]