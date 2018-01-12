running
setUp
	| query |
	super setUp.
	query := self createQuery.
	queryResult := query execute.
	itemObserver := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: itemObserver