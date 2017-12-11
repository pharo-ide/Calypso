controlling
itemsChanged
	[self isClosed ifFalse: [
		itemCursor updateItemCache.
		self updateExpandingItems.
		queryView itemsChangedIn: self.
		self tableRefresh]] updateCalypsoUI