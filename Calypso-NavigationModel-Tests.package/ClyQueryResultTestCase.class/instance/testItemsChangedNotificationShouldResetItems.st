tests
testItemsChangedNotificationShouldResetItems
	
	queryResult initializeItems.
	self assert: queryResult isBuilt.
	
	queryResult itemsChanged.
	
	self deny: queryResult isBuilt.
	self assert: queryResult itemBuffer isNil