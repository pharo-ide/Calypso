browser item preparation
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	myItem addProperty: (
		ClyExtendedClassDefinitionProperty package: package class: self class)