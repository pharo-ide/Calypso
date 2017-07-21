operations
restoreBrowserInstance
	self browser ifNotNil: [ ^self ].
	
	browser := WeakArray with: self createBrowser.	
	
	self applyToBrowser 