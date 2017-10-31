accessing
queryResult: aQueryResult
	itemCursor ifNotNil: [ itemCursor close ].
	
	itemCursor := aQueryResult openBrowserCursor.
	itemCursor itemObserver: self.
	metadata := itemCursor metadata