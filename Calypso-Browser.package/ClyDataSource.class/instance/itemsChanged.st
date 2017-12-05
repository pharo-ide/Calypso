controlling
itemsChanged
	
	self updateExpandingItems.

	[self isClosed ifFalse: [ 
		queryView itemsOf: self wereUpdatedBy: nil.
		self tableRefresh]] updateCalypsoUI