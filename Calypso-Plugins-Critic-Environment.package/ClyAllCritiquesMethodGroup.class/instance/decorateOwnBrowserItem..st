decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	"self isReady" false ifFalse: [  myItem markWith: ClyBackgroundProcessingTag]