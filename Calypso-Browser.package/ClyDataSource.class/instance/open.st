controlling
open
	
	self isClosed ifFalse: [ self close ].
	
	itemCursor := query openBrowserCursor.
	itemCursor itemObserver: self