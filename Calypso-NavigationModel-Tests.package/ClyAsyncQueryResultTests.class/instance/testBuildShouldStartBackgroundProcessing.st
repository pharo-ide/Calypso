tests
testBuildShouldStartBackgroundProcessing

	queryResult rebuild.
	
	self assert: (queryResult hasMetaProperty: ClyBackgroundProcessingTag).
	self deny: queryResult buildProcess isTerminated