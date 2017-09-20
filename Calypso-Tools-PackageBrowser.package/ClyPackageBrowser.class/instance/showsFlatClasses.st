testing
showsFlatClasses
	^self packageSelection isEmpty not 
		and: [ (classView showsContentInScope: ClyClassHierarchyScope) not]