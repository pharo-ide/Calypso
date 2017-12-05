tests
testForceLazyRebuild
	
	self assert: queryResult items notNil.
	
	queryResult forceLazyRebuild.
	
	self deny: queryResult isBuilt