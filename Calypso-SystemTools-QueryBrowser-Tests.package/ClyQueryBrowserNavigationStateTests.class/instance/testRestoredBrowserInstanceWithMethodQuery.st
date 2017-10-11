tests
testRestoredBrowserInstanceWithMethodQuery

	| query |
	query := ClySortedMethods asEnvironmentQuery.
	browser systemQuery: query.
	
	self restoreBrowserInstance.
	
	self assert: browser systemQuery equals: query