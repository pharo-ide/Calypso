default
defaultResultContent
	^DefaultResultContent ifNil: [ DefaultResultContent := ClySortedQueryResult using: ClySortMethodFunction ascend ]