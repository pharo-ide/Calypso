default
defaultQueryResult
	^DefaultQueryResult ifNil: [ 
		DefaultQueryResult := ClyHierarchicalSystemItems new]