tests
testNotifyingItemObserver

	| observer |
	observer := ClyItemsObserverExample new.
	cursor itemObserver: observer.
	
	queryResult itemsChanged.
	self assert: observer wasNotified