tests
testItemsChangedNotificationShouldResetActualResultItems
	
	queryResult initializeItems.
	self assert: queryResult isBuilt.
	
	queryResult itemsChanged.
	
	self deny: queryResult isBuilt.
	self assert: queryResult items notNil.
	self deny: queryResult actualResult isBuilt