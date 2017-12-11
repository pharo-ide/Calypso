tests
testRestoredBrowserInstanceWithMethodQuery

	| query |
	query := ClyAllMethods sorted.
	browser systemQuery: query.
	
	self restoreBrowserInstance.
	
	self assert: browser systemQuery equals: query