tests
testBuildCompletionShouldNotifyBrowserResultObservers

	| observer |
	observer := ClyItemObserverExample new.
	queryResult subscribe: observer.

	queryResult rebuild.
	query passExecution.
	self waitBuildComplete.
	
	self assert: observer wasNotified