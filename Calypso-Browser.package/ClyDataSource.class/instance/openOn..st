controlling
openOn: aQueryView
	
	self isClosed ifFalse: [ self close ].

	queryView := aQueryView.	
	itemCursor := query openBrowserCursorFor: self