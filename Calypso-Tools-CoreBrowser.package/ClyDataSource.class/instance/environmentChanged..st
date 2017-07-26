system changes
environmentChanged: anEnvironmentChanged

	self updateItems.
	[self isClosed ifFalse: [ 
		itemsView itemsOf: self wereUpdatedBy: anEnvironmentChanged.
		self tableRefresh]] updateCalypsoUI