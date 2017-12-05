controlling
open
	
	self isClosed ifFalse: [ self close ].
	
	itemCursor := query openBrowserCursorFor: self