building
fillStatusBar

	self belongsToCurrentBrowserContext ifFalse: [ 
		statusBar addContextItem: (ClyToolContextNavigatorMorph for: self) ]