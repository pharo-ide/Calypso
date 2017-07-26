running
restoreBrowserInstance

	self snapshotNavigationState.
	
	navigationState applyTo: browser