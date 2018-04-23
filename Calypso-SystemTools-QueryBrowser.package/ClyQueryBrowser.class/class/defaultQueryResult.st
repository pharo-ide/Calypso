default
defaultQueryResult
	^DefaultQueryResult ifNil: [ 
		DefaultQueryResult := ClySortedQueryResult using: ClyHeterogeneousItemSortFunction ascending]