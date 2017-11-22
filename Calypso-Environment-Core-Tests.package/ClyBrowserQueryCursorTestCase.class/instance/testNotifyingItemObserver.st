tests
testNotifyingItemObserver

	| observer |
	observer := ClyItemsObserverExample new.
	cursor itemObserver: observer.
	cursor cache items: #(cacheStub).
	
	queryResult itemsChanged.
	self deny: cursor cache items = #(cacheStub) description: 'cache should be updated'.
	self assert: observer wasNotified