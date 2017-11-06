default
defaultQueryResult
	^DefaultQueryResult ifNil: [ DefaultQueryResult := ClySortedQueryResult using: ClySortMethodFunction ascend ]