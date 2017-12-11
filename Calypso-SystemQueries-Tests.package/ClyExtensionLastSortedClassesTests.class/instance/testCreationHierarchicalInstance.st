tests
testCreationHierarchicalInstance

	queryResult := ClyExtensionLastSortedClasses hierarchical.
	
	self assert: queryResult baseQueryResult class equals: ClyHierarchicallySortedClasses 