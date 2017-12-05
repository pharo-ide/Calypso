tests
testOpeningBrowserCursor
	
	| itemObserver |
	itemObserver := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: itemObserver.
	
	self assert: cursor class equals: ClyBrowserQueryCursor.
	self assert: cursor queryResult equals: queryResult.
	self assert: cursor itemObserver equals: itemObserver.
	queryResult hasSubscriber: itemObserver