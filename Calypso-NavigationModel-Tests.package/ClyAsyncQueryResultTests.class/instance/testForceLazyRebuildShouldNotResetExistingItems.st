tests
testForceLazyRebuildShouldNotResetExistingItems
	
	self assert: queryResult items notNil.
	 
	queryResult forceLazyRebuild.
	
	self assert: queryResult needsRebuild.
	self assert: queryResult isBuilt.
	self assert: queryResult items notNil