navigation
switchToFullClassHierarchyOf: aClass
	
	| classScope |
	classScope := ClyClassScope of: aClass in: navigationEnvironment.
	
	self 
		switchClassViewTo: ClyHierarchicallySortedClasses new
		inScope: classScope asFullHierarchyScope