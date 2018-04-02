tests
testItemsChangedNotificationShouldNotResetExistingItems
	
	queryResult itemBuffer: #(items).
	
	queryResult itemsChanged.
	
	self assert: queryResult itemBuffer equals: #(items).
	self assert: queryResult needsRebuild