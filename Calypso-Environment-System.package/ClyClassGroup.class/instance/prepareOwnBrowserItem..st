items resolving
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
		
	"we think any class group have classes".
	myItem markWithChildrenOf: ClyClass