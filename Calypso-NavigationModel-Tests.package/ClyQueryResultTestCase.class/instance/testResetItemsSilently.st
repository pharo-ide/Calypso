tests
testResetItemsSilently
	
	self assert: queryResult items notNil.
	
	queryResult resetItemsSilently.
	
	self deny: queryResult isBuilt