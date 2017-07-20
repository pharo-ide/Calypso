operations
restoreBrowserInstance
	browser ifNotNil: [ ^self ].
	
	browser := self createBrowser.	
	self applyToBrowser 