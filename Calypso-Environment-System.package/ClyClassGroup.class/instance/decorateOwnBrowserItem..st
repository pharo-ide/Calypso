decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
		
	myItem markWithChildrenOf: ClyClass "any class group have classes"