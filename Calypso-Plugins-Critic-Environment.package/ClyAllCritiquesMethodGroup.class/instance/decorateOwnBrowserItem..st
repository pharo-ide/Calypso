decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	self isReady ifFalse: [  myItem markWith: ClyBackgroundProcessingTag]