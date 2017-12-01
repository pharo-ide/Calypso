tests
testBuildingShouldSetUpItemsFromActualResultWhenTheyReady

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self deny: (queryResult hasMetaProperty: ClyBackgroundProcessingTag).
	self assert: queryResult items == queryResult actualResult items.
	self assert: queryResult items asSet = query scope basisObjects.