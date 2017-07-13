system changes
environmentChanged: anEnvironmentChanged

	self updateItems.
	[itemsView itemsOf: self wereUpdatedBy: anEnvironmentChanged.
	self tableRefresh] updateCalypsoUI