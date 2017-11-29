controlling
itemsChanged
	
	self updateExpandingItems.

	[queryView itemsOf: self wereUpdatedBy: nil.
	self tableRefresh] updateCalypsoUI