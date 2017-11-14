browser item preparation
prepareBrowserItem: aBrowserItem by: anEnvironmentPlugin
	^ anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofMethodGroup: aBrowserItem actualObject