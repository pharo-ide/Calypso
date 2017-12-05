decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	self asyncQueryResult isReady ifFalse: [  myItem markWith: ClyBackgroundProcessingTag]