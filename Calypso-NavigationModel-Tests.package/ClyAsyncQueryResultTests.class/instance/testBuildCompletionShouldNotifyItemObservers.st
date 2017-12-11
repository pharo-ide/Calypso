tests
testBuildCompletionShouldNotifyItemObservers

	| observer cursor |
	observer := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: observer.

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: observer wasNotified