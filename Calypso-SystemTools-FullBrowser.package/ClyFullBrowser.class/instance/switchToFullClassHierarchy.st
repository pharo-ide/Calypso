navigation
switchToFullClassHierarchy
	
	| classScope |
	classScope := self classSelection asItemsScope: ClyInstanceSideScope.
	
	self 
		switchClassViewTo: ClyHierarchicallySortedClasses new
		inScope: classScope asFullHierarchyScope