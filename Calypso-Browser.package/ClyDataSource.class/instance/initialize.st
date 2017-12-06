initialization
initialize
	super initialize.
	query := ClyUnknownQuery instance.
	itemCursor := ClyClosedBrowserCursor instance.
	depth := 0