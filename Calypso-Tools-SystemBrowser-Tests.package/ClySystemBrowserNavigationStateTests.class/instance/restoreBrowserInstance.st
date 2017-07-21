running
restoreBrowserInstance

	self snapshotNavigationState.
	navigationState resetBrowser.
	
	navigationState restoreBrowserInstance.
	browser := navigationState browser