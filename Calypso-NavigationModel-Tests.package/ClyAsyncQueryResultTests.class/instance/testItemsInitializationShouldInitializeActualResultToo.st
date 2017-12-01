tests
testItemsInitializationShouldInitializeActualResultToo
	
	queryResult initializeItems.
	
	self assert: queryResult actualResult items notNil