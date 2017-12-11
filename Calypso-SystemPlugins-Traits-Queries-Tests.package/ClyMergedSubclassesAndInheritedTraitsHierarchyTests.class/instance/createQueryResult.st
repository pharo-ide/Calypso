running
createQueryResult
	^(ClySubclassHierarchy new, ClyTraitUserHierarchy inverse) 
		asQueryResult sortedBy: ClyTraitFirstSortFunction ascend