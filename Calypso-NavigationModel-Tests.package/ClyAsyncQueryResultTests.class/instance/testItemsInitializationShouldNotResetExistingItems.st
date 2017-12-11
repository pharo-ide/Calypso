tests
testItemsInitializationShouldNotResetExistingItems
	
	queryResult items: #(items).
	queryResult initializeItems.
	
	self assert: queryResult items equals: #(items)