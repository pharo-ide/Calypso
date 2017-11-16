browser item preparation
prepareBrowserItem: aBrowserItem by: anEnvironmentPlugin
	^ anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofClass: aBrowserItem actualObject