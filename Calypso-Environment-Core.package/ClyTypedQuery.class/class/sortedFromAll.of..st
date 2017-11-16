instance creation
sortedFromAll: scopeClasses of: basisObjects
	
	^(self fromAll: scopeClasses of: basisObjects)
		requiredResult: (ClySortedQueryResult using: self resultItemsType defaultSortFunctionForCalypso)