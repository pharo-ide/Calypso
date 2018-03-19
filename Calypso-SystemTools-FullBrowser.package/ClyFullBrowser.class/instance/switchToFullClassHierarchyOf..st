navigation
switchToFullClassHierarchyOf: aClass
	
	| classScope |
	classScope := ClyInstanceSideScope of: aClass in: navigationEnvironment.
	
	self 
		switchClassViewTo: ClyHierarchicallySortedClasses new
		inScope: classScope asFullHierarchyScope