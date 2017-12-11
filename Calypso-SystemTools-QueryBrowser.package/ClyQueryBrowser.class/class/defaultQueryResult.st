default
defaultQueryResult
	^DefaultQueryResult ifNil: [ 
		DefaultQueryResult := ClySortedQueryResult using: ClySortSystemItemFunction ascend]