testing
showsFlatClasses
	^self selectedPackages isEmpty not 
		and: [ (classView showsContentInScope: ClyClassHierarchyScope) not]