default
defaultQueryResult
	^DefaultQueryResult ifNil: [ 
		DefaultQueryResult := ClySortedQueryResult using: ClyHeterogeneousSortFunction ascending]