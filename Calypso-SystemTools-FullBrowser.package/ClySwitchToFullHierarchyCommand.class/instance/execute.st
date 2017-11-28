execution
execute
	| classScope |
	classScope := browser classSelection asItemsScope: ClyClassScope.
	
	browser 
		switchClassViewTo: ClyHierarchicallySortedClasses new
		inScope: classScope asFullHierarchyScope