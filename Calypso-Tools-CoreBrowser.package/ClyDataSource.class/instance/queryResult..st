accessing
queryResult: aQueryResult
	itemCursor ifNotNil: [ itemCursor close ].
	
	itemCursor := aQueryResult openBrowserCursor.
	itemCursor itemsObserver: self.
	metadata := itemCursor metadata