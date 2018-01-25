decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
		
	classQuery decorateItemGroup: myItem.	
	subgroupsQuery decorateItemGroup: myItem