tests
testCreationSimpleInstance

	queryResult := ClyExtensionLastSortedClasses simple.
	
	self assert: queryResult baseQueryResult class equals: ClySortedQueryResult  