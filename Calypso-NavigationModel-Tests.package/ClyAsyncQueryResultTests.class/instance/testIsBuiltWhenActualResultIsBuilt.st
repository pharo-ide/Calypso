tests
testIsBuiltWhenActualResultIsBuilt
	
	queryResult initializeItems.
	
	self assert: queryResult actualResult isBuilt.
	self assert: queryResult isBuilt