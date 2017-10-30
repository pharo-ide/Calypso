controlling
itemsChanged
	
	metadata := itemCursor metadata.
	self updateExpandingItems.

	[itemsView itemsOf: self wereUpdatedBy: nil.
	self tableRefresh] updateCalypsoUI