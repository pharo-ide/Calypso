decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	self asyncQueryResult isBuilt ifFalse: [  myItem markWith: ClyBackgroundProcessingTag]