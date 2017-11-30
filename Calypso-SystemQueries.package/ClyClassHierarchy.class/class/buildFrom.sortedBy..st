instance creation
buildFrom: classes sortedBy: aSortFunction
	^self new
		classes: classes; 
		parentMap: (ClyClassHierarchyMap sortedBy: aSortFunction);
		build