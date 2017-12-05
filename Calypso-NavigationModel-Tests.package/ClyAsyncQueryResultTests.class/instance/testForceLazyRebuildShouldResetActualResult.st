tests
testForceLazyRebuildShouldResetActualResult
	
	self assert: queryResult items notNil.
	self assert: queryResult actualResult items notNil.
	 
	queryResult forceLazyRebuild.
	
	self deny: queryResult isBuilt.
	self assert: queryResult items notNil.
	self assert: queryResult actualResult items isNil