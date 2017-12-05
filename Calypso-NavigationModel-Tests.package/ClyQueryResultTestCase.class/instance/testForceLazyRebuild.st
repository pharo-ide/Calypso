tests
testForceLazyRebuild
	
	self assert: queryResult items notNil.
	
	queryResult forceLazyRebuild.
	
	self assert: queryResult needsRebuild