controlling
openOn: aQueryView
	
	self isClosed ifFalse: [ self close ].

	queryView := aQueryView.	
	table := aQueryView table.
	itemCursor := query openBrowserCursorFor: self