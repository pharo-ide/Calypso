decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	myItem markWithChildrenOf: ClyMethod. "There are no groups without methods"
	methodQuery decorateMethodGroupItem: myItem.
	self markItemWithSubgroups: myItem