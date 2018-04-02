running
setUp
	| query |
	super setUp.
	query := self createQuery adoptedForBrowser.
	queryResult := query execute.
	itemObserver := ClyItemObserverExample new.
	cursor := queryResult openBrowserCursorFor: itemObserver