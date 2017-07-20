operations
restoreBrowserInstance
	self browser ifNotNil: [ ^self ].
	
	browser := self createBrowser.	
	self applyToBrowser 