running
createQueryResult
	^(ClySubclassHierarchy inverse, ClyTraitUserHierarchy inverse) 
		asQueryResult sortedBy: ClyTraitFirstSortFunction ascend