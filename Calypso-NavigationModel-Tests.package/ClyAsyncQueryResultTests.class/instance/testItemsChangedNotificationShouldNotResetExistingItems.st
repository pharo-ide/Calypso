tests
testItemsChangedNotificationShouldNotResetExistingItems
	
	queryResult itemBuffer: #(items).
	
	queryResult itemsChanged.
	
	self assert: queryResult items equals: #(items).
	self assert: queryResult needsRebuild