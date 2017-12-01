tests
testResetItemsSilentlyShouldResetActualResult
	
	self assert: queryResult items notNil.
	self assert: queryResult actualResult items notNil.
	 
	queryResult resetItemsSilently.
	
	self deny: queryResult isBuilt.
	self assert: queryResult items notNil.
	self assert: queryResult actualResult items isNil