controlling
itemsChanged
	[self isClosed ifFalse: [
		itemCursor updateItemCache.
		self updateExpandingItems.
		queryView itemsOf: self wereUpdatedBy: nil.
		self tableRefresh]] updateCalypsoUI