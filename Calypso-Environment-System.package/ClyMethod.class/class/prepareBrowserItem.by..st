browser item preparation
prepareBrowserItem: aBrowserItem by: anEnvironmentPlugin
	^ anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofMethod: aBrowserItem actualObject