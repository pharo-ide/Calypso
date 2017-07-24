running
restoreBrowserInstance

	self snapshotNavigationState.
	
	browser := navigationState createBrowser