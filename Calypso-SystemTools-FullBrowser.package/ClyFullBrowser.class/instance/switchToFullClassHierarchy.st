navigation
switchToFullClassHierarchy
	
	| classScope |
	classScope := self classSelection asItemsScope: ClyClassScope.
	
	self 
		switchClassViewTo: ClyHierarchicallySortedClasses new
		inScope: classScope asFullHierarchyScope