decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
		
	"we think any class group have classes".
	myItem markWithChildrenOf: ClyClass