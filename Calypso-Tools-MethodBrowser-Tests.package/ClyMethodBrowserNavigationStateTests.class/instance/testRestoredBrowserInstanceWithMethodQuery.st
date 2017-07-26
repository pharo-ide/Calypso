tests
testRestoredBrowserInstanceWithMethodQuery

	| query |
	query := ClySortedMethods asEnvironmentQuery.
	browser methodQuery: query.
	
	self restoreBrowserInstance.
	
	self assert: browser methodQuery equals: query