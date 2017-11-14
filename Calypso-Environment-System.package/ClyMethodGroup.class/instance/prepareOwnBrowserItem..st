browser item preparation
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	myItem markWithChildrenOf: ClyMethod. "There are no groups without methods"
	self markItemWithSubgroups: myItem