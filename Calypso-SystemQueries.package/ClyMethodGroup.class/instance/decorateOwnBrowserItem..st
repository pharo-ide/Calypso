decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	methodQuery decorateItemGroup: myItem.
	subgroupsQuery decorateItemGroup: myItem.