items resolving
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	self hasSubgroups ifTrue: [myItem markWithChildrenOf: ClyMethodGroup]