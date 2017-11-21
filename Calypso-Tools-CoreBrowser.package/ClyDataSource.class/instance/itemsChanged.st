controlling
itemsChanged
	
	self updateExpandingItems.

	[itemsView itemsOf: self wereUpdatedBy: nil.
	self tableRefresh] updateCalypsoUI