testing
showsFlatClasses
	^self packageSelection isEmpty not 
		and: [ (classView showsItemsFromScope: ClyClassHierarchyScope) not]