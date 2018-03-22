tests
testItemsInitializationShouldNotResetExistingItems
	
	queryResult itemBuffer: #(items).
	queryResult initializeItems.
	
	self assert: queryResult items equals: #(items)