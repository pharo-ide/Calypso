item resolving
prepareBrowserItem: aBrowserItem by: anEnvironmentPlugin
	^ anEnvironmentPlugin
		prepareBrowserItem: aBrowserItem
		ofPackageGroup: aBrowserItem actualObject