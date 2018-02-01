running
createQueryResult
	^(ClySubclassHierarchy new, ClyTraitUserHierarchy inverse) 
		asQueryResult sortedBy: ClyTraitFirstSortFunction ascending