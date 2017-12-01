tests
testBuildCompletionShouldNotifyItemObservers

	| observer cursor |
	observer := ClyItemsObserverExample new.
	cursor := queryResult openBrowserCursor.
	cursor itemObserver: observer.

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: observer wasNotified