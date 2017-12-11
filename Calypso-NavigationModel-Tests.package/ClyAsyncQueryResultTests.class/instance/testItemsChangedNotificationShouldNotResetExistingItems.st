tests
testItemsChangedNotificationShouldNotResetExistingItems
	
	queryResult items: #(items).
	
	queryResult itemsChanged.
	
	self assert: queryResult items equals: #(items).
	self assert: queryResult needsRebuild