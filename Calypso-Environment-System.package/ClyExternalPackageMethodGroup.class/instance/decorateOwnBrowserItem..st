decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	myItem addProperty: (
		ClyExtendedClassDefinitionProperty package: package class: self class)