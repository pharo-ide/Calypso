accessing
createUpdateWithItemsStartingAt: startPosition count: cacheSize
	"it is important for remote scenario to call new metadata and new cache by single message.
	In this case all required properties of metadata and cache will be transferred in one request using update instance"
	
	| itemCache |
	itemCache := ClyBrowserCursorCache 
		filledBy: self 
		startingAt: startPosition
		size: cacheSize.
	^ClyBrowserCursorUpdate of: self withItems: itemCache